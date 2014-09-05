{Controller} = require 'spine'
template = require '../views/home_page'
Project  = require 'zooniverse/models/project'
StatsBox = require "./stats_box"

class HomePage extends Controller
  className: 'home-page'

  elements:
    'section[role="stats-box"]': 'statsSection'

  constructor: ->
    super
    @statsBox = new StatsBox
    Project.on 'fetch', @statsBox.update
    @html template
    @statsSection.append @statsBox.el

  activate: ->
    super
    Project.fetch() # to render current stats data

module.exports = HomePage
