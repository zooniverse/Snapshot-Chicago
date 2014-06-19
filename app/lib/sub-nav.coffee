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
  constructor: (page, @el) ->
    setTimeout => @activateFirstTab(page)

    @el.find(".sub-nav-#{page} button").on "click", (e) =>
      @activatePage(page, e.target.name)

  activateFirstTab: (page) ->
    firstSection = $(".sub-nav-#{page} button:nth-child(1)").attr('name')
    @activatePage(page, firstSection)

  showSection: (page, section) ->
    @el.find(".sub-nav-#{page}-#{section}")
      .show()
      .siblings().hide()

  activateSubNavLink: (page, section) ->
    @el.find(".sub-nav-#{page} button[name=#{section}]")
      .addClass("active")
      .siblings().removeClass("active")

  activateMainNavLink: (page) ->
    setTimeout => $("nav a[href$='#{page}']").addClass("active")

  activatePage: (page, section) =>
    Route.navigate("/#{page}", section, false)
    @showSection(page, section)
    @activateSubNavLink(page, section)
    @activateMainNavLink(page)


module?.exports = SubNav
