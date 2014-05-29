{Controller} = require "spine"
template = require '../views/navigation'

class Navigation extends Controller
  tag: 'nav'

  elements:
    'a': 'links'

  constructor: ->
    super
    @html template
    addEventListener 'hashchange', @onHashChange, false
    @onHashChange()

  onHashChange: =>
    @links.removeClass 'active'
    @links.filter("[href='#{location.hash}']").addClass 'active'

module.exports = Navigation
