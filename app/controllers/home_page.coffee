{Controller} = require 'spine'
template = require '../views/home_page'
Project  = require 'zooniverse/models/project'
ProjectStats = require '../models/project_stats'
formatNumber =  require '../lib/format_number'


class HomePage extends Controller
  className: 'home-page'

  stats: null
  
  handleProjectFetch: ->
    @stats = new ProjectStats(Project.current)
    formatedPercentComplete = @stats.percentComplete().toString() + "%"
    #re-rendering stats on the view
    view_controls = $(".snapshot-chicago-stats")
    view_controls.find("#user-count").text(formatNumber(@stats.userCount))
    view_controls.find("#classification-count").text(formatNumber(@stats.classificationCount))
    view_controls.find("#percent-complete").text(formatedPercentComplete)
    view_controls.find("#total-images").text(formatNumber(@stats.totalSubjectCount))

  constructor: ->
    super
    Project.on "fetch", @handleProjectFetch 
    @html template
   
module.exports = HomePage
