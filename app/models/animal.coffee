characteristics = require '../lib/characteristics'
{Model} = require 'spine'
translate = require 't7e'

characteristicIds = (characteristic.id for characteristic in characteristics)

class Animal extends Model
  @configure 'Animal', 'label', 'images', 'description', characteristicIds...

  constructor: ->
    super

    setTimeout @translateLabel

  translateLabel: =>
    @updateAttribute 'label', translate 'span', "animals.#{@id}.label"

  toJSON: -> @id

  @vehicles: ["Mower"]

  @domestics: ["Human", "Cat, Domestic", "Dog, Domestic"]

  @notAVehicle: (animalName) ->
    animalName not in @vehicles

  @notAVehicleOrDomestic: (animalName) ->
    animalName not in @domestics.concat @vehicles

  @behaviors: {headUp: 'U', headDown: 'D', neither: 'N', notVisible: 'V'}

module.exports = Animal
