{Controller, Route} = require 'spine'
template = require '../views/education_page'
SubNav = require "../lib/sub-nav"

class EducationPage extends Controller
  className: 'education-page'

  constructor: ->
    super
    @html template
    educationNav = new SubNav "education", @el

    Route.add "/education/:section", (params) =>
      @active()
      setTimeout => educationNav.routeTo(params.section)

module.exports = EducationPage
