{Controller} = require 'spine'
template = require '../views/home_page'
Project  = require 'zooniverse/models/project'
ProjectStats = require '../models/project_stats'
formatNumber =  require '../lib/format_number'

class HomePage extends Controller
  className: 'home-page'

  stats: null
  
  onStatsDataReady: =>
    #render stats on the view
    formatedPercentComplete = @stats.percentComplete().toString() + "%"
    view_controls = $(".snapshot-chicago-stats")
    view_controls.find("#user-count").text(formatNumber(@stats.userCount))
    view_controls.find("#classification-count").text(formatNumber(@stats.classificationCount))
    view_controls.find("#percent-complete").text(formatedPercentComplete)
    view_controls.find("#total-images").text(formatNumber(@stats.totalSubjectCount))

  handleProjectFetch: =>
    @stats = new ProjectStats(Project.current)
    #wait for all stats to be be ready before formatting
    @stats.on 'statsDataReady', @onStatsDataReady

  updateStatsAfterClassify: =>
    #this will trigger the logic for handleProjectFetch which was already bound
    Project.fetch()

  constructor: ->
    super
    Project.on "fetch", @handleProjectFetch 
    @html template
   
module.exports = HomePage
