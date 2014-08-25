Subject = require 'zooniverse/models/subject'

module.exports = ->
  new Subject
    id: '5077375154558fabd7000003'
    zooniverseId: 'TUTORIAL_SUBJECT'
    workflowId: '5077375154558fabd7000002'

    location: standard:
      'images/tutorial-subject/tutorial-gray-squirrel.jpg'

    coords: [2.3308, 34.8333]

    metadata:
      tutorial: true
      timestamps: [(new Date).toString()]
