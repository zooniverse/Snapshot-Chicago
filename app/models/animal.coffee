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

  @vehicles: ["Mower", "Car", "Vehicle, Other", "Bike"]

  @notAVehicle: (animalName) ->
    animalName not in @vehicles

  @behaviors: {headUp: 'U', headDown: 'D', neither: 'N', notVisible: 'V'}

module.exports = Animal
