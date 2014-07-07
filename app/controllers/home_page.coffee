{Controller} = require 'spine'
template = require '../views/home_page'
# ImageChanger = require './image_changer'
Api = require 'zooniverse/lib/api'
Recent = require 'zooniverse/models/recent'

class HomePage extends Controller
  className: 'home-page'

  elements:
    '.recents figure': 'recents'
    '.progress .classification-count': 'classificationCount'
    '.progress .user-count': 'userCount'
    '.progress .fill': 'progressFill'

  activeRecent: -1

  constructor: ->
    super
    @html template
    #TODO keep?
    $(document.body).addClass 'lift-banner'
    setTimeout (-> $(document.body).removeClass 'lift-banner'), 2000

    # @imageChanger = new ImageChanger
    #   el: @el.find '.recents .image-changer'
    #   sources: []

    #TODO that's not how we do things nowadays get from User object most likely
    # Api.get '/projects/serengeti', (data) =>
    #   @classificationCount.html data.classification_count
    #   @userCount.html data.user_count
    #   @progressFill.width "#{100 * (data.complete_count / @totalSubjects)}%"


    # success: (recents) =>
    #   recents.sort (a, b) -> a.favorited < b.favorited
    #   mostRecent = for recent, i in recents when i < 3
    #     locations = recent.subjects[0]?.location.standard
    #     continue unless locations
    #     locations[Math.floor locations.length / 2]

    #   @imageChanger.setSources mostRecent

    # failure: =>
    #   console?.log ("Couldn't get recents")

    # # recents = Recent.fetch.done(success).fail(failure)
    # Recent.fetch().done (recents) ->
    #   recents.sort (a, b) -> a.favorited < b.favorited
    #   mostRecent = for recent, i in recents when i < 3
    #     locations = recent.subjects[0]?.location.standard
    #     continue unless locations
    #     locations[Math.floor locations.length / 2]


module.exports = HomePage
