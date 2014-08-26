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

  redirectTo: (path, delay = 0) ->
    setTimeout (=> window.location.hash = "#/" + path), delay

  onClickFiltered: =>
    SubjectSelector.safeMode = true
    @dimNotClicked @unfilteredBtn
    redirectTo("classify", @redirectDelay)

  onClickUnfiltered: =>
    SubjectSelector.safeMode = false
    @dimNotClicked @filteredBtn
    redirectTo("classify", @redirectDelay)

  dimNotClicked: (btn) ->
    btn.addClass("not-clicked-dim").siblings().removeClass("not-clicked-dim")


module.exports = FilterPage