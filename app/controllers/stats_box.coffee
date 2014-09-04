{Controller} = require 'spine'
template = require '../views/stats_box'
Api = require 'zooniverse/lib/api'
Project = require "zooniverse/models/project"

class StatsBox extends Controller
  className: 'snapshot-chicago-stats'

  elements:
    '#user-count': 'userCount'
    '#percent-complete': 'complete'
    '#total-images': 'totalImages'
    '#classification-count': 'classificationCount'

  constructor: ->
    super
    @html template

  updateSubjectTotal: ->
    # this is separate from update because not stored on the project

    Api.current.get '/projects/chicago/groups/', (groups) =>
      @totalSubjectCount = groups
        .map (group) -> +group.stats.total
        .reduce (total, count) -> total + count
      @totalImages.text @totalSubjectCount

  update: =>
    project = Project.current

    @updateSubjectTotal() unless @totalSubjectCount
    @completeCount = project.complete_count
    @complete.text @percentComplete() + "%"
    @classificationCount.text project.classification_count
    @userCount.text project.user_count

  percentComplete: ->
    return 0 unless @totalSubjectCount
    Math.floor(@completeCount / @totalSubjectCount * 100)

module?.exports = StatsBox
