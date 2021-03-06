{Controller} = require 'spine'
template = require '../views/subject_viewer'
AnnotationItem = require './annotation_item'
Subject = require 'zooniverse/models/subject'
SubjectSelector = require '../models/subject_selector'
User = require 'zooniverse/models/user'
modulus = require '../lib/modulus'
Notify = require '../lib/notifier'

class SubjectViewer extends Controller
  classification: null
  active: NaN

  className: 'subject-viewer'

  playTimeouts: null

  events:
    'click button[name="favorite"]': 'onClickFavorite'
    'change input[name="nothing"]': 'onChangeNothingCheckbox'
    'click button[name="finish"]': 'onClickFinish'
    'click button[name="next"]': 'onClickNext'

  elements:
    '.subject-images figure': 'figures'
    'button[name="favorite"]': 'favoriteBtn'
    '.favorite-tooltip': 'favoriteTooltip'
    '.annotations': 'annotationsContainer'
    '.annotations p': 'annotationsMessage'
    'input[name="nothing"]': 'nothingCheckbox'
    'button[name="finish"]': 'finishButton'
    'a.talk-link': 'talkLink'
    '.subject-image': 'subjectImage'

  constructor: ->
    super
    @playTimeouts = []
    @el.attr tabindex: 0

    @setClassification @classification

    Subject.on 'select', @onSubjectSelect

    localStorage.cwwClassifyCount = 0 if not User.current and not localStorage.cwwClassifyCount

  setClassification: (classification) ->
    @el.removeClass 'finished'
    @classification?.off 'change', @onClassificationChange
    @classification?.off 'add-species', @onClassificationAddSpecies

    @classification = classification

    if @classification
      @classification.on 'change', @onClassificationChange
      @classification.on 'add-species', @onClassificationAddSpecies

      @html template @classification
      @loader = @el.find(".subject-loader").show()
      @overrideFacebookShareLink()
      @onClassificationChange()
    else
      @html ''

  onClassificationChange: =>
    noAnnotations = @classification.annotations.length is 0
    nothing = @classification.metadata.nothing
    isFavorite = !!@classification.favorite

    inSelection = @classification.metadata.inSelection
    @el.toggleClass 'no-annotations', noAnnotations
    @el.toggleClass 'favorite', isFavorite

    @finishButton.attr disabled: inSelection or (noAnnotations and not nothing)

  onClassificationAddSpecies: (classification, annotation) =>
    @annotationsMessage.remove()
    item = new AnnotationItem {@classification, annotation}
    item.el.appendTo @annotationsContainer
    @scrollToBottomOfAnnotations()

  scrollToBottomOfAnnotations: ->
    @annotationsContainer.animate({ scrollTop: @annotationsContainer[0].scrollHeight}, 1000)

  onClickFavorite: ->
    favorited = @classification.favorite = !@classification.favorite
    @toggleFavoriteIcon(favorited)
    @toggleFavoriteHoverText(favorited)

  toggleFavoriteIcon: (favorited) ->
    @favoriteBtn.toggleClass "favorited", favorited

  toggleFavoriteHoverText: (favorited) ->
    @favoriteTooltip
      .find(".add-favorite, .remove-favorite").toggle()

  onChangeNothingCheckbox: ->
    nothing = @nothingCheckbox.get(0).checked
    @classification.annotate {nothing}, true

  onSubjectSelect: =>
    setTimeout => @loader.hide()

  onClickFinish: ->
    @el.addClass 'finished'
    @classification.send() unless @classification.subject.metadata.empty
    @handleLoginPrompt()

  handleLoginPrompt: =>
    return if +localStorage.cwwClassifyCount > 2 or !!User.current
    if +localStorage.cwwClassifyCount is 2
      Notify.message """
        <a href='#' onclick='window.zooniverse.controllers.loginDialog.show()'>Sign in</a> or
        <a href='#' onclick='window.zooniverse.controllers.signupDialog.show()'>Sign up</a>  
        to track your progress, add images to your favorites, and receive credit for your contributions!
      """, "#fff"
    localStorage.cwwClassifyCount++

  onClickNext: ->
    @loader.show()
    @subjectImage.css('visibility', 'hidden')
    SubjectSelector.getNext()

  overrideFacebookShareLink: ->
    @el.find(".fb-social-link").attr 'href', @facebookHref()

  facebookHref: ->
    subject = Subject.current if Subject.current
    subjectImage = subject?.location?.standard
    """
      https://www.facebook.com/sharer/sharer.php
      ?s=100
      &p[url]=#{encodeURIComponent?(subjectImage)}
      &p[title]=#{encodeURIComponent subject?.socialTitle()}
      &p[summary]=#{encodeURIComponent subject?.socialMessage()}
      &p[images][0]=#{subject?.socialMessage()}
    """.replace '\n', '', 'g'

module.exports = SubjectViewer
  
