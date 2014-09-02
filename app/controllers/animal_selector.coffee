{Controller} = require 'spine'
template = require '../views/animal_selector'
FilterMenu = require './filter_menu'
columnize = require '../lib/columnize'
AnimalDetails = require './animal_details'
getTutorialSubject = require '../lib/get_tutorial_subject'
SmallTutorial = require "../lib/small_tutorial"
SmallTutorialSlides = require "../lib/small_tutorial_slides"
getPhysicallyAdjacentSibling = require '../lib/get_physically_adjacent_sibling'
redirectTo = require "../lib/redirect_to"
User = require 'zooniverse/models/user'
translate = require 't7e'
Notifier = require '../lib/notifier'


class AnimalSelector extends Controller
  set: null
  characteristics: null

  className: 'animal-selector'

  events:
    'keydown input[name="search"]': 'onSearchKeyDown'
    'keydown .selection-area': 'onSelectionAreaKeyDown'
    'click [data-animal]': 'onAnimalItemClick'
    'click button[name="clear-filters"]': 'onClickClearFilters'
    'click button[name="start-small-tutorial"]': 'onClickSmallTutorial'
    'click button[name="start-tutorial"]': 'onClickStartTutorial'
    'click button[name="safe-mode"]': 'onClickSafeMode'

  elements:
    'input[name="search"]': 'searchInput'
    '.items': 'itemsContainer'
    '[data-animal]': 'items'

  constructor: ->
    super
    throw new Error 'AnimalSelector needs a set' unless @set
    throw new Error 'AnimalSelector needs some characteristics' unless @characteristics

    @set.bind 'filter', @onSetFilter
    @set.bind 'search', @onSetSearch

    @html template @
    @createFilterMenus()

    @onSetFilter @set.items
    @onSetSearch @set.items

    @smallTutorial = new SmallTutorial
      slides: SmallTutorialSlides

    User.on 'change', @handleFirstVisit

  createFilterMenus: ->
    for characteristic in @characteristics
      new FilterMenu
        el: @el.find ".#{characteristic.id}.filter-menu"
        set: @set
        characteristic: characteristic

  setClassification: (@classification) ->
    @clearFilters()
    @classification.on 'add-species', @clearFilters

  KEYS =
    ENTER: 13
    ESC: 27

  ARROWS =
    LEFT: 37
    UP: 38
    RIGHT: 39
    DOWN: 40

  onSearchKeyDown: ({which}) ->
    setTimeout =>
      if which is KEYS.ESC
        @searchInput.attr value: ''

      if which is KEYS.ENTER
        targets = @items.filter ':not(".dimmed")'
        targets.first().focus()
        targets.first().click() if targets.length is 1

      @set.search @searchInput.val()

  onSelectionAreaKeyDown: (e) ->
    {target, which} = e

    switch which
      when KEYS.ENTER
        $(document.activeElement).click()
      when KEYS.SLASH
        @searchInput.focus()
      else
        key = (key for key, val of ARROWS when which is val)[0]
        return unless key

        sibling = getPhysicallyAdjacentSibling target, key.toLowerCase()
        $(sibling).focus()

    e.preventDefault()

  onSetFilter: (matches, options) =>
    matchIds = (match.id for match in matches)

    breakpoints = [20, 10, 5, 0]
    breakpoint = point for point in breakpoints when matches.length <= point
    @itemsContainer.attr 'data-items': breakpoint ? 'lots'
    @itemsContainer.toggleClass 'safari-hack'

    columns = switch breakpoint
      when 0, 5 then 1
      when 10, 20 then 2
      else 3

    sortedItems = matchIds.map (id) =>
      @itemsContainer.find "[data-animal='#{id}']"

    sortedItems = columnize sortedItems, columns

    for item in sortedItems
      item.appendTo item.parent()

    for item in @items
      item = $(item)
      item.toggleClass 'hidden', item.attr('data-animal') not in matchIds

    @items

  onSetSearch: (matches, searchString) =>
    matchIds = (match.id for match in matches)
    for item in @items
      item = $(item)
      item.toggleClass 'dimmed', item.attr('data-animal') not in matchIds

  onAnimalItemClick: ({currentTarget}) ->
    animalId = $(currentTarget).attr 'data-animal'
    animal = @set.find(id: animalId, true)[0]
    @select animal

  select: (animal) ->
    details = new AnimalDetails {animal, @classification, @set}
    @classification.annotate inSelection: true, true
    details.bind 'release', @onDetailsRelease
    @el.append details.el
    setTimeout details.show, 125

  #TODO This seems to create a second inSelection annotation which seems like strange thing  
  onDetailsRelease: =>
    @classification.annotate inSelection: null, true

  onClickClearFilters: ->
    @clearFilters()

  clearFilters: =>
    @set.filter {}, true
    @searchInput.val ''
    @searchInput.trigger 'keydown'

  onClickStartTutorial: ->
    getTutorialSubject().select()

  onClickSmallTutorial: ->
    @smallTutorial.start()

  handleFirstVisit: (e, user) =>
    if user?.classification_count is 0 or not user
      @smallTutorial.start()
      Notifier.message(translate('div', 'filterPage.notification'), Notifier.red, true)

  onClickSafeMode: ->
    redirectTo("filter")

module.exports = AnimalSelector
