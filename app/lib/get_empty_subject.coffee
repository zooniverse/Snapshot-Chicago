Subject = require '../models/subject'

module.exports = ->
  
  offline_subjects = [
    'offline/subjects/Raccoon_coyote.JPG',
    'offline/subjects/edison_park_deer.JPG',
    'offline/subjects/empty_3.jpg',
    'offline/subjects/gray_squirrel.JPG',
    'offline/subjects/jefferson_park_red_fox_2.JPG',
    'offline/subjects/rabbit.JPG',
    'offline/subjects/coyote.JPG',
    'offline/subjects/empty_1.jpg',
    'offline/subjects/fox_squirrel_4.JPG',
    'offline/subjects/human.JPG',
    'offline/subjects/near_north_coyotes.JPG',
    'offline/subjects/rat.JPG',
    'offline/subjects/dog.JPG',
    'offline/subjects/empty_2.jpg',
    'offline/subjects/garfield_ridge_opossum.JPG',
    'offline/subjects/hyde_park_raccoon.jpg',
    'offline/subjects/opossum.JPG',
    'offline/subjects/skunk.JPG'
  ]

  #create a subject with a random image from the list of sample offline subjects
  Subject.create
    id: 'EMPTY_SUBJECT'

    location: standard: [
      offline_subjects[ Math.floor(Math.random() * offline_subjects.length) ]
    ]


    coords: [2.3308, 34.8333]

    metadata:
      empty: true
      timestamps: [(new Date).toString()]
