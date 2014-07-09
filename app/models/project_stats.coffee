Api = require 'zooniverse/lib/api'

#TODO inherit from Spine.model or not?
class ProjectStats 

  complete_count: 0
  classification_count:  0
  user_count: 0
  total_count: 0

  constructor: (project) ->
    if project?
      @complete_count = project.complete_count
      @classification_count = project.classification_count
      @user_count =  project.user_count  
      total_count = 1
      for group in project.groups when project.groups.stats?
        total_count += group.stats["total"]
    
   percentComplete: ->
     complete_count/total_count

module.exports = ProjectStats

