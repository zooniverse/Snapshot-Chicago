{Controller} = require 'spine'
SubjectViewer = require './subject_viewer'
AnimalSelector = require './animal_selector'
animals = require '../lib/animals'
characteristics = require '../lib/characteristics'
AnimalMenuItem = require './animal_menu_item'
Subject = require 'zooniverse/models/subject'
SubjectSelector = require '../models/subject_selector'
User = require 'zooniverse/models/user'
{Tutorial} = require 'zootorial'
tutorialSteps = require '../lib/tutorial_steps'
getTutorialSubject = require '../lib/get_tutorial_subject'
Classification = require '../models/classification'
helpLink = require '../views/classifier_help_link.eco'
template = require '../views/classifier'

class Classifier extends Controller
  className: 'classifier'

  tutorial: null

  subject: null
  classification: null

  constructor: ->
    super
    @html(template)

    @animalSelector = new AnimalSelector
      set: animals
      characteristics: characteristics
      itemController: AnimalMenuItem

    @el.find('.animal-selector-container').append @animalSelector.el

    @subjectViewer = new SubjectViewer

    @el.find('.subject-viewer-container').append @subjectViewer.el

    User.on 'change', @onUserChange

    @tutorial = new Tutorial
      steps: tutorialSteps
      parent: @el

    @el.append helpLink

    Subject.group = true

    Subject.on 'select', @onSubjectSelect
    Subject.on 'no-more', @onNoLocalSubjects
    $(document).on 'keydown', @onKeyDown

  KEYS =
    13: 'ENTER', 27: 'ESC', 32: 'SPACE'
    48: 0, 49: 1, 50: 2, 51: 3, 52: 4, 53: 5, 54: 6, 55: 7, 56: 8, 57: 9
    69: 'E', 70: 'F', 73: 'I', 77: 'M', 79: 'O', 80: 'P', 81: 'Q', 82: 'R'
    83: 'S', 84: 'T', 85: 'U', 87: 'W', 88: 'X', 89: 'Y'
    61: '=', 173: '-', 188: '<', 190: '>', 219: '[', 221: ']'

  textFieldSelector = 'input[type="text"], input[type="password"], input:not("[type]"), textarea, select, [contenteditable]'

  onKeyDown: (e) =>
    return if e.altKey or e.ctrlKey or e.metaKey

    return unless @el.is ':visible'

    target = $(e.target)
    key = KEYS[e.which]
    return unless key

    # Don't break default text field behavior.
    return if target.is textFieldSelector

    # Don't break default link/button behavior.
    return if key in ['ENTER', 'SPACE'] and target.is 'a, button'

    # Choose the last visible element so newer UI elements
    # (presumably appended to the end) are favored.
    element = @el.find("[data-shortcut='#{key}']:visible").last()
    return if element.length is 0

    e.preventDefault()

    if element.is textFieldSelector
      element.focus()
    else
      element.click()

  onSubjectSelect: (event, subject) =>
    for property in ['tutorial', 'empty']
      @el.toggleClass property, !!subject.metadata[property]

    @classification = new Classification {subject}
    @subjectViewer.setClassification @classification
    @animalSelector.setClassification @classification

    if !!subject.metadata.tutorial
      @tutorial.start()
    else
      @tutorial.end()

  onNoLocalSubjects: =>
    alert 'Couldn\'t find an image to display. Maybe you have classified all currently available images. Check back soon!'

  onUserChange: (e, user) =>
    @user = user
    @tutorial.end()
    SubjectSelector.getNext()

    # logic to proclaim user's first visit
    @animalSelector.firstVisit = true unless user?.classification_count
    @animalSelector.handleFirstVisit() if @el.hasClass 'active'

  activate: ->
    super
    @el.fadeIn(250)
    @animalSelector.handleFirstVisit()
    setTimeout => @tutorial.dialog.attach()

  deactivate: ->
    @el.hide()

module.exports = Classifier
