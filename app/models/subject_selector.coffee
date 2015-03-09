Subject = require "zooniverse/models/subject"
Notify = require "../lib/notifier"
translate = require "t7e"

groups = if !!~location.hostname.indexOf('demo') || +location.port >= 1024
    gold: '53f61f71edf877ca7f000003'
    winter2013: '53f61f8cedf877ca7f000004'
    spring2014: '53f61f8cedf877ca7f000005'
  else
    gold: '5410f7213ae740c000000001'
    spring2012: '5410f5723ae740bff2000001'

SubjectSelector =
  groups: groups

  goldStandardRate: 0.15

  safeCount: 2

  safeMode: false

  shouldShowGoldStandard: ->
    Math.random() < @goldStandardRate and not @completedGoldStandard()

  setGroup: (id) ->
    Subject.group = id

  setGroupByName: (name) ->
    @setGroup(@groups[name])

  setGoldStandardComplete: ->
    localStorage.goldStandardComplete = true

  completedGoldStandard: ->
    localStorage.goldStandardComplete is true

  tryForAGoldStandard: (failCallback) ->
    groupToReturnTo = if Subject.group is @groups.gold then true else Subject.group
    @setGroup(@groups.gold)

    Subject.fetch limit: 1, (subjects) =>
      if subjects?.length
        Subject.current?.destroy()
        @setGroup(groupToReturnTo)
        subjects[0].select()
      else
        @setGroup(groupToReturnTo)
        @setGoldStandardComplete()
        failCallback()

  getSafeNext: (attempts = 5) ->
    return @subjectError() if attempts <= 0

    Subject.fetch limit: 10, (subjects) =>
      safes = subjects.filter (s) => s.classification_count > @safeCount

      if safes?.length
        Subject.current?.destroy()
        safes[0].select()
      else
        @getSafeNext(attempts - 1)

  fetchGoldStandard: ->
    @tryForAGoldStandard => @fetchNext()

  subjectError: ->
    @tryForAGoldStandard ->
      Notify.message(translate('span', 'classify.curatedError'), "#fff", true)
      $(".subject-loader").hide()

  fetchNext: ->
    if @safeMode then @getSafeNext() else Subject.next()

  getNext: ->
    # call where Subject.next would normally happen
    if @shouldShowGoldStandard() then @fetchGoldStandard() else @fetchNext()

module?.exports = SubjectSelector
