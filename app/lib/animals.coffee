FilteringSet = require '../models/filtering_set'
Animal = require '../models/animal'
translate = require 't7e'


#Chicago values
values = [
  'likeCatDog','likeRodent','likeOther',
  'coatTanYellow','coatRedBrown','coatBrownBlack','coatGrayBlack','coatMottled','coatSolid','coatOrTailStriped',
  'tailBushy','tailSmooth','tailLong',
  'buildStocky','buildLanky','buildSmall','buildLowSlung',
  'manMade'
]

#Chicago Characteristics
# The order of characteristics is derived from the list of values.
characteristics = ['like', 'coat','tail', 'build', 'manMade']

#Chicago animal  characteristics
animalCharacteristics = [
  {beaver:                  [0,1,1,0,1,1,0,0,0,0,0,0,1,1,0,0,1,0]}
  {bike:                    [0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]}
  {car:                     [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]}
  {domCat:                  [1,0,0,1,1,1,1,1,1,1,1,0,1,1,0,0,0,0]}
  {chipmunk:                [0,1,0,1,1,0,0,0,0,1,0,1,1,0,0,1,1,0]}
  {coyote:                  [1,0,0,1,0,1,1,1,0,0,1,0,1,0,1,0,0,0]}
  {deer:                    [0,0,1,1,0,0,0,0,1,0,1,0,0,0,1,0,0,0]}
  {domDog:                  [1,0,0,1,1,1,1,1,1,1,1,0,1,1,1,0,0,0]}
  {grayFox:                 [1,0,0,0,0,0,1,1,0,0,1,0,1,0,0,0,0,0]}
  {redFox:                  [1,0,0,0,1,0,0,1,0,0,1,0,1,0,0,0,0,0]}
  {horse:                   [0,0,1,0,0,0,0,0,1,0,0,0,1,0,1,0,0,0]}
  {livestock:               [0,0,1,1,1,1,1,0,1,0,0,0,0,0,0,0,0,0]}
  {mink:                    [0,0,0,0,1,1,0,0,1,0,0,1,1,0,0,1,1,0]}
  {mouse:                   [0,1,0,1,0,0,1,0,1,0,0,1,1,0,0,1,1,0]}
  {mower:                   [0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]}
  {muskrat:                 [0,1,0,0,1,1,0,0,1,0,0,1,1,1,0,1,1,0]}
  {opossum:                 [0,1,0,1,0,0,1,1,0,0,0,1,1,0,0,0,1,0]}
  {otherVehicle:            [0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]}
  {rabbit:                  [0,0,1,1,0,0,0,1,0,0,0,0,0,0,0,1,1,0]}
  {raccoon:                 [0,0,1,0,0,1,1,1,0,1,1,0,1,0,0,0,1,0]}
  {rat:                     [0,1,0,0,0,0,1,0,1,0,0,1,1,0,0,1,1,0]}
  {skunk:                   [0,0,1,0,0,1,0,0,1,1,1,0,1,0,0,0,1,0]}
  {flyingSquirrel:          [0,1,0,1,0,0,1,0,0,0,0,1,1,0,0,1,1,0]}
  {foxSquirrel:             [0,1,0,0,1,0,0,1,0,0,1,0,1,0,0,1,0,0]}
  {graySquirrel:            [0,1,0,1,0,0,1,1,0,0,1,0,1,0,0,1,0,0]}
  {melanisticGraySquirrel:  [0,1,0,0,0,1,0,0,1,0,1,0,1,0,0,1,0,0]}
  {woodChuck:               [0,1,0,0,1,1,0,0,1,0,0,0,0,1,0,0,1,0]}
]


dashedFromId = (id) ->
  id.replace /[A-Z]/g, (cap) -> "-#{cap.toLowerCase()}"

# imagesFromId = (id) -> [
#     "images/animals/#{dashedFromId id}-1.jpg"
#     "images/animals/#{dashedFromId id}-2.jpg"
#     "images/animals/#{dashedFromId id}-3.jpg"
#   ]

imagesFromId = (id) -> [
    "http://placehold.it/350x150&text=#{dashedFromId id}"
    "http://placehold.it/350x150&text=#{dashedFromId id}"
    "http://placehold.it/350x150&text=#{dashedFromId id}"
  ]  

animals = new FilteringSet
  searchProperties: ['label', 'description']
  items: for item in animalCharacteristics
    for id, grid of item
      animal = new Animal
        id: id
        label: translate('span', "animals.#{id}.label")
        description: translate('span', "animals.#{id}.description")
        images: imagesFromId id

      for char in characteristics
        animal[char] = (value for value, i in values when value[0...char.length] is char and grid[i] is 1)
        animal[char] = animal[char][0] if animal[char].length is 1
        delete animal[char] if animal[char].length is 0

      animal.save()
    animal

module.exports = animals
