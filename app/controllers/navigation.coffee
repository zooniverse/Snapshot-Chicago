{Controller} = require "spine"
template = require '../views/navigation'

class Navigation extends Controller
  tag: 'nav'

  elements:
    'a': 'links'
    'li': 'navItems'

  events:
    'click #hamburger-icon': 'onClickHamburgerIcon'
    'click a': 'onChangePage'

  constructor: ->
    super
    @html template
    addEventListener 'hashchange', @onHashChange, false
    @onHashChange()

  onHashChange: =>
    @links.removeClass 'active'
    @links.filter("[href='#{location.hash}']").addClass 'active'

  onClickHamburgerIcon: =>
    @navItems.slideToggle(200)

  onChangePage: =>
    @navItems.slideUp(200) if window.innerWidth < 520

module.exports = Navigation
