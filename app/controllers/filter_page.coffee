{Controller, Route} = require 'spine'
template = require '../views/filter_page'
SubNav = require "../lib/sub-nav"
SubjectSelector = require "../models/subject_selector"
redirectTo = require "../lib/redirect_to"

class FilterPage extends Controller
  className: 'filter-page'
  redirectDelay: 1000

  events:
    'click button[name="filtered"]': 'onClickFiltered'
    'click button[name="unfiltered"]': 'onClickUnfiltered'

  elements:
    'button[name="filtered"]': 'filteredBtn'
    'button[name="unfiltered"]': 'unfilteredBtn'

  constructor: ->
    super
    @html template

  activate: ->
    setTimeout => @el.slideDown(500)

  deactivate: ->
    @el.hide()

  onClickFiltered: =>
    SubjectSelector.safeMode = true
    SubjectSelector.getNext()
    @dimNotClicked @unfilteredBtn
    redirectTo("classify", @redirectDelay)

  onClickUnfiltered: =>
    SubjectSelector.safeMode = false
    SubjectSelector.getNext()
    @dimNotClicked @filteredBtn
    redirectTo("classify", @redirectDelay)

  dimNotClicked: (btn) ->
    btn.addClass("not-clicked-dim").siblings().removeClass("not-clicked-dim")


module.exports = FilterPage
