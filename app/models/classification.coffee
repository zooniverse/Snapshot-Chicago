# This class exists just to add an event to the zooniverse classification class
# There might be a better way to do this. 
ZooniverseClassification = require 'zooniverse/models/classification'

class Classification extends ZooniverseClassification

  # compare with original signature
  # annotate: (values, isMetadata = false) ->
  annotate: (values) ->
    super
    # does the metadata really need to get cleaned off in this manner
    # if isMetadata
    #   @metadata[key] = value for own key, value of values
    #   delete @metadata[key] unless value?
    # else
    #   @annotations.push values
    @trigger 'add-species', values if 'species' of values

module.exports = Classification