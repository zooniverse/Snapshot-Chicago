{Controller} = require 'spine'
template = require '../views/home_page'
Project  = require 'zooniverse/models/project'
ProjectGroup  = require 'zooniverse/models/project-group'
ProjectStats = require '../models/project_stats'

class HomePage extends Controller
  className: 'home-page'

  stats: null

  #These aren't used, but we might need similar handles
  # elements:   
  #   '.recents figure': 'recents'
  #   '.progress .classification-count': 'classificationCount'
  #   '.progress .user-count': 'userCount'
  #   '.progress .fill': 'progressFill'
  
  handleProjectFetch: ->
    @stats = new ProjectStats(Project.current)
    #some re-rendering activity for the view here

  constructor: ->
    super
    Project.on "fetch", @handleProjectFetch 
    @html template
   
module.exports = HomePage
