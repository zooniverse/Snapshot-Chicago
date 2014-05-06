{Controller} = require 'spine'
$ = require 'jqueryify'
template = require '../views/profile'
LoginForm = require 'zooniverse/controllers/login-form'
User = require 'zooniverse/models/user'
Favorite = require 'zooniverse/models/favorite'
Recent = require 'zooniverse/models/recent'
itemTemplate = require '../views/profile_item'

class Profile extends Controller
  className: 'profile'

  itemPages: null

  events:
    'click button[name="turn-page"]': 'onClickPageButton'
    'click button[name="delete"]': 'onClickDelete'
    'click button[name="load-more"]': 'onClickLoadMore'

  elements:
    '.sign-in': 'signInContainer'
    'nav button': 'navButtons'
    '.page': 'pages'
    '.favorites ul': 'favoritesList'
    '.recents ul': 'recentsList'

  constructor: ->
    super

    @html template
    @loginForm = new LoginForm el: @signInContainer

    User.on 'sign-in', @onUserSignIn

    Favorite.on 'create destroy', @onItemCreateDestroy
    Favorite.on 'send', @onCreateItem
    Favorite.on 'is-new', @onMarkNew

    Recent.on 'create destroy', @onItemCreateDestroy
    Recent.on 'send', @onCreateItem
    Recent.on 'is-new', @onMarkNew

    @navButtons.first().click()
    @onUserSignIn()

  onClickPageButton: ({currentTarget}) ->
    @navButtons.add(@pages).removeClass 'active'

    value = $(currentTarget).val()
    page = @pages.filter ".#{value}"
    button = @navButtons.filter "[value='#{value}']"

    button.add(page).addClass 'active'

  onClickDelete: ({currentTarget}) ->
    item = $(currentTarget).parent("[data-item]")
    id = item.attr 'data-item'
    Favorite.find(id).unfavorite()

  onClickLoadMore: ({currentTarget}) ->
    ItemClass = switch $(currentTarget).val()
      when 'favorite' then Favorite
      when 'recent' then Recent

    @loadMore ItemClass

  onUserSignIn: =>
    @el.toggleClass 'signed-in', !!User.current

    for ItemClass in [Favorite, Recent]
      ItemClass.first().destroy() until ItemClass.count() is 0

    @itemPages = {}

    if User.current
      @loadMore Favorite
      @loadMore Recent

  onItemCreateDestroy: (item) =>
    ItemClass = item.constructor
    className = ItemClass.className.toLowerCase()
    hasItems = ItemClass.count() isnt 0

    @el.toggleClass "has-#{className}s", hasItems

    loadMoreButton = @el.find "button[name='load-more'][value='#{className}']"
    loadMoreButton.attr disabled: not hasItems

  onCreateItem: (item) =>
    #TODO what is item, use bind() or on()
    
    list = @["#{item.constructor.className.toLowerCase()}sList"]
    return unless list.find("[data-item='#{item.id}']").length is 0

    item = $(itemTemplate item)
    item.bind 'destroy', -> item.remove()
    item.appendTo list

  onMarkNew: (item) =>
    item = @el.find "[data-item='#{item.id}']"
    item.prependTo item.parent()
    item.addClass 'new'

  loadMore: (ItemClass) ->
    @itemPages[ItemClass.className] ?= 0
    @itemPages[ItemClass.className] += 1
    fetch = ItemClass.fetch(page: @itemPages[ItemClass.className], per_page: 8).deferred
    fetch.done => @onFetchItems ItemClass

  onFetchItems: (ItemClass) =>
    @onCreateItem item for item in ItemClass.all()

module.exports = Profile