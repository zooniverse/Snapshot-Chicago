{Controller} = require "spine"
template = require '../views/navigation'

class Navigation extends Controller
  tag: "nav"
  className: 'site-navigation'

  elements:
    'a': 'links'
    'li': 'navItems'

  events:
    'click #hamburger-icon': 'onClickHamburgerIcon'
    'click a': 'onChangePage'
    'click .dark-mode-toggle': 'onClickDarkModeToggle'

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

  onClickDarkModeToggle: =>
    $('body').toggleClass('dark-mode')

module.exports = Navigation
