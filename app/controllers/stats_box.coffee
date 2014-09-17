{Controller} = require 'spine'
template = require '../views/stats_box'
Api = require 'zooniverse/lib/api'
Project = require "zooniverse/models/project"
num = require "../lib/format_number"

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
    deffered = new $.Deferred()
    if @totalSubjectCount
      deffered.resolve(@totalSubjectCount)
    else
      Api.current.get '/projects/chicago/groups/', (groups) =>
        @totalSubjectCount = groups
          .map (group) -> +group.stats.total
          .reduce (total, count) -> total + count
        deffered.resolve(@totalSubjectCount)
    return deffered.promise()

  setTotal: (total) =>
    @totalImages.text num(total)
    return total

  update: =>
    @updateSubjectTotal().then(@setTotal).then(@updateHelper)

  updateHelper: =>
    project = Project.current
    @completeCount = project.complete_count
    @complete.text @percentComplete() + "%"
    @classificationCount.text num(project.classification_count)
    @userCount.text num(project.user_count)

  percentComplete: ->
    return 0 unless @totalSubjectCount
    Math.floor(@completeCount / @totalSubjectCount * 100)

module?.exports = StatsBox
