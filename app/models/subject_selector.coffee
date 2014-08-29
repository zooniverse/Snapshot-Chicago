Subject = require "zooniverse/models/subject"

SubjectSelector =
  groups:
    gold: '53f61f71edf877ca7f000003'
    winter2013: '53f61f8cedf877ca7f000004'
    spring2014: '53f61f8cedf877ca7f000005'

  goldStandardRate: 1 / 3

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

  fetchGoldStandard: ->
    groupToReturnTo = if Subject.group is @groups.gold then true else Subject.group
    @setGroup(@groups.gold)

    Subject.fetch limit: 1, (subjects) =>
      if subjects?.length
        subjects[0].select()
      else
        @setGoldStandardComplete()
        @fetchNext()
      @setGroup(groupToReturnTo)

  getSafeNext: (attempts = 3) ->
    return @fetchGoldStandard() if attempts <= 0

    Subject.fetch limit: 10, (subjects) =>
      safes = subjects.filter (s) -> s.classification_count > @safeCount
      if safes?.length
        safes[0].select()
      else
        @getSafeNext(attempts - 1)

  fetchNext: ->
    if @safeMode then @getSafeNext() else Subject.next()

  getNext: ->
    if @shouldShowGoldStandard()
      @fetchGoldStandard()
    else
      @fetchNext()

module?.exports = SubjectSelector
