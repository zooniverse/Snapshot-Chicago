Characteristic = require '../models/characteristic'
Value = Characteristic.Value
translate = require 't7e'

module.exports = [
  new Characteristic
    id: 'like'
    label: translate 'span', 'characteristics.like'
    values: [
      new Value id: 'likeCatDog', label: translate 'span', 'characteristicValues.likeCatDog'
      new Value id: 'likeRodent', label: translate 'span', 'characteristicValues.likeRodent'
      new Value id: 'likeManMade', label: translate 'span', 'characteristicValues.likeManMade'
      new Value id: 'likeOther', label: translate 'span', 'characteristicValues.likeOther'
    ]

  new Characteristic
    id: 'coat'
    label: translate 'span', 'characteristics.coat'
    values: [
      new Value id: 'coatTanYellow', label: translate 'span', 'characteristicValues.coatTanYellow'
      new Value id: 'coatRedBrown', label: translate 'span', 'characteristicValues.coatRedBrown'
      new Value id: 'coatBrownBlack', label: translate 'span', 'characteristicValues.coatBrownBlack'
      new Value id: 'coatGrayBlack', label: translate 'span', 'characteristicValues.coatGrayBlack'
      new Value id: 'coatMottled', label: translate 'span', 'characteristicValues.coatMottled'
      new Value id: 'coatSolid', label: translate 'span', 'characteristicValues.coatSolid'
      new Value id: 'coatOrTailStriped', label: translate 'span', 'characteristicValues.coatOrTailStriped'
    ]

  new Characteristic
    id: 'tail'
    label: translate 'span', 'characteristics.tail'
    values: [
      new Value id: 'tailBushy', label: translate 'span', 'characteristicValues.tailBushy'
      new Value id: 'tailSmooth', label: translate 'span', 'characteristicValues.tailSmooth'
      new Value id: 'tailLong', label: translate 'span', 'characteristicValues.tailLong'
    ]

  new Characteristic
    id: 'build'
    label: translate 'span', 'characteristics.build'
    values: [
      new Value id: 'buildStocky', label: translate 'span', 'characteristicValues.buildStocky'
      new Value id: 'buildLanky', label: translate 'span', 'characteristicValues.buildLanky'
      new Value id: 'buildSmall', label: translate 'span', 'characteristicValues.buildSmall'
      new Value id: 'buildLowSlung', label: translate 'span', 'characteristicValues.buildLowSlung'
    ]

]

