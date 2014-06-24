{Route} = require "spine"

###
Secondary Page SubNav Usage

1. Create a nav with class="sub-nav-PAGE_NAME"
    ex: "science", "education"

2. Add buttons to the nav with name="SECTION_NAME"
    ex: "planets", "more-info", etc.

3. Add content sections with class="sub-nav-PAGE_NAME-SECTION_NAME"

4. The first child button and content section will be the default active
###

class SubNav
  constructor: (@page, @el) ->
    setTimeout => @activateFirstTab(page)

    @el.find(".sub-nav-#{page} button").on "click", (e) =>
      @routeTo(e.target.name)

  activateFirstTab: ->
    firstSection = $(".sub-nav-#{@page} button:nth-child(1)").attr('name')
    @activateSection(firstSection)

  showSection: (section) ->
    @el.find(".sub-nav-#{@page}-#{section}")
      .show()
      .siblings().hide()

  activateSubNavLink: (section) ->
    @el.find(".sub-nav-#{@page} button[name=#{section}]")
      .addClass("active")
      .siblings().removeClass("active")

  activateMainNavLink: ->
    setTimeout => $("nav a[href$='#{@page}']").addClass("active")

  activateSection: (section) ->
    @showSection(section)
    @activateSubNavLink(section)

  routeTo: (section) =>
    Route.navigate("/#{@page}", section, false)
    @activateMainNavLink(@page)
    @activateSection(section)

module?.exports = SubNav
