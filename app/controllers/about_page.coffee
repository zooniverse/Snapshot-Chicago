{Controller, Route} = require 'spine'
template = require '../views/about_page'
SubNav = require "../lib/sub-nav"

class AboutPage extends Controller
  className: 'about-page'

  constructor: ->
    super
    @html template
    aboutNav = new SubNav "about", @el

    Route.add "/about/:section", (params) =>
      @active()
      setTimeout => aboutNav.routeTo(params.section)

module.exports = AboutPage
