Api = require 'zooniverse/lib/api'
api = new Api project: 'chicago'
ProjectGroup = require "zooniverse/models/project-group" 
Model = require "zooniverse/models/base-model" 

class ProjectStats extends Model

  completeCount: 0
  classificationCount:  0
  userCount: 0
  totalSubjectCount:  0

  constructor: (project) ->
    if project?
      @completeCount = project.complete_count || 0
      @classificationCount = project.classification_count || 0 
      @userCount =  project.user_count  || 0 
      #notify that all stats done when the total quantity of subjects come back from backend
      @getCountsFromGroups().then(@notifyDataReady)

  getCountsFromGroups:  =>
    #accumulate the total subjects for each group
    Api.current.get '/projects/chicago/groups/', (groups) =>
      for group in groups
        @totalSubjectCount += parseInt(group.stats.total)
      @totalSubjectCount

  notifyDataReady: =>
    @trigger 'statsDataReady'

  percentComplete: ->
    unless @totalSubjectCount > 0 then return 0 
    Math.floor(@completeCount / @totalSubjectCount * 100)


module.exports = ProjectStats

