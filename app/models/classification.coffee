# This class exists just to add an event to the zooniverse classification class
# There might be a better way to do this. 
ZooniverseClassification = require 'zooniverse/models/classification'

class Classification extends ZooniverseClassification

  #TODO this metadata construct is a hold out from Snapshot Serengeti
  constructor: ->
    super
    @metadata ||= {}

  annotate: (values, isMetadata = false) ->
    # TODO does the metadata really need to get cleaned off in this manner
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
      #TODO this call to save Spine base model save() which basically was an id generator. 
      # I'm not sure if we still need this functionality
      #@save()
      @trigger 'deannotate', toDelete
      return toDelete 

module.exports = Classification