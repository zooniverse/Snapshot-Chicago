Api = require 'zooniverse/lib/api'

class ProjectStats 

  completeCount: 0
  classificationCount:  0
  userCount: 0
  totalSubjectCount: 0

  constructor: (project) ->
    if project?
      @completeCount = project.complete_count || 0
      @classificationCount = project.classification_count || 0 
      @userCount =  project.user_count  || 0 
      # following field may not be available
      if project.subject_count?
        @totalSubjectCount = project.subject_count
      else
        # This method of obtaining the total subject count depends on Project.extended being set 
        # see zoonivers/models/Project.onFetch()
        for group in project.groups? when project.groups.stats?
          @totalSubjectCount += group.stats["total"]
      
   percentComplete: ->
     unless @totalSubjectCount > 0 then return 0 
     Math.floor(@completeCount / @totalSubjectCount * 100)

module.exports = ProjectStats

