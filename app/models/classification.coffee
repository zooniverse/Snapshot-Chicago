# This class exists just to add an event to the zooniverse classification class
ZooniverseClassification = require 'zooniverse/models/classification'

class Classification extends ZooniverseClassification

  constructor: ->
    super
    @metadata ||= {}

  annotate: (values, isMetadata = false) ->
    if isMetadata
      @metadata[key] = value for own key, value of values
      delete @metadata[key] unless value?
    else
      super values
    @trigger 'change'
    @trigger 'add-species', values if 'species' of values

  deannotate: (toDelete) ->
    for annotation, i in @annotations when annotation is toDelete
      @annotations.splice i, 1
      @trigger 'deannotate', toDelete
      return toDelete 

module.exports = Classification
