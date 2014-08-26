{Tutorial} = require 'zootorial'
{Step} = Tutorial
translate = require 't7e'

Step::defaultButton = translate 'classify.tutorial.continueButton'

inline = (string) ->
  string.split('\n\n').join '<br /><br />'

module.exports = [
  new Step
    header: -> inline translate 'p', 'classify.tutorial.welcomeHeader'
    content: -> inline translate 'p', 'classify.tutorial.welcome'

  new Step
    header: -> inline translate 'p', 'classify.tutorial.trapsHeader'
    content: -> inline translate 'p', 'classify.tutorial.traps'
    attachment: x: 'left', margin: -10, to: '.subject-viewer', at: x: 'right'
    className: 'arrow left'

  new Step
    header: -> inline translate 'p', 'classify.tutorial.taskHeader'
    content: -> inline translate 'p', 'classify.tutorial.task'
    attachment: x: 'right', margin: -10, to: '.animal-selector', at: x: 'left'
    className: 'arrow right'

  new Step
    header: -> inline translate 'p', 'classify.tutorial.chooseRodentHeader'
    content: -> inline translate 'p', 'classify.tutorial.chooseRodent'
    nextOn: click: 'button[value="likeRodent"]'
    attachment: x: 'right', margin: 10, to: 'button[name="characteristic"][value="like"]', at: x: 'left'
    className: 'arrow right'

    onEnter: ->
      @toHighlight = $('button[value="likeRodent"][name="characteristic-value"]')
      @toHighlight.css 'font-weight': 'bold'

    onExit: ->
      @toHighlight.css 'font-weight': 'auto'

  new Step
    header: -> inline translate 'p', 'classify.tutorial.chooseTanYellowHeader'
    content: -> inline translate 'p', 'classify.tutorial.chooseTanYellow'
    nextOn: click: 'button[value="coatTanYellow"]'
    attachment: x: 'right', margin: 10, to: 'button[name="characteristic"][value="coat"]', at: x: 'left'
    className: 'arrow right'

  new Step
    header: -> inline translate 'p', 'classify.tutorial.chooseBushyHeader'
    content: -> inline translate 'p', 'classify.tutorial.chooseBushy'
    nextOn: click: 'button[value="tailBushy"]'
    attachment: y: 'top', margin: 10, to: 'button[name="characteristic"][value="tail"]', at: y: 'bottom'
    className: 'arrow up'

  new Step
    header: -> inline translate 'p', 'classify.tutorial.chooseGraySquirrelHeader'
    content: -> inline translate 'p', 'classify.tutorial.chooseGraySquirrel'
    nextOn: click: '[data-animal="graySquirrel"]'
    attachment: y: 'top', to: '[data-animal="graySquirrel"]', at: y: 'bottom'
    className: 'arrow up'

  new Step
    header: -> inline translate 'p', 'classify.tutorial.confirmWildebeestHeader'
    content: -> inline translate 'p', 'classify.tutorial.confirmWildebeest'
    attachment: x: 'right', to: '.animal-details .image-changer', at: x: 'left'
    className: 'arrow right'

  new Step
    header: -> inline translate 'p', 'classify.tutorial.identifyWildebeestHeader'
    content: -> inline translate 'p', 'classify.tutorial.identifyWildebeest'
    attachment: x: 'right', margin: 10, to: '.animal-details .options', at: x: 'left'
    className: 'arrow right'
    nextOn: click: 'button[name="identify"]'

  # UNCOMMENT THESE LINES IF WE FIND A TUTORIAL SUBJECT WITH 2 ANIMALS IN IT, OR NEED TO CALLOUT SEARCH FUNCTION

  # new Step
  #   header: -> inline translate 'p', 'classify.tutorial.findZebrasHeader'
  #   content: -> inline translate 'p', 'classify.tutorial.findZebras'
  #   attachment: x: 'left', margin: -10, to: '.subject-viewer', at: x: 'right'
  #   block: 'button[name="finish"]'
  #   className: 'arrow left'

  # new Step
  #   header: -> inline translate 'p', 'classify.tutorial.typeZebraHeader'
  #   content: -> inline translate 'p', 'classify.tutorial.typeZebra'
  #   attachment: x: 'right', margin: 10, to: '.animal-selector .search', at: x: 'left'
  #   className: 'arrow right'
  #   nextOn: {} # This is handled by onEnter.

  #   onEnter: (tutorial, step) ->
  #     doc = $(document)
  #     search = $('.animal-selector input[name="search"]')

  #     doc.on 'keydown.typeZebra', (e) ->
  #       setTimeout ->
  #         if search.val().toLowerCase() is 'zebra'
  #           doc.off 'keydown.typeZebra'
  #           tutorial.next()

  # new Step
  #   header: -> inline translate 'p', 'classify.tutorial.clickZebraHeader'
  #   content: -> inline translate 'p', 'classify.tutorial.clickZebra'
  #   attachment: x: 'right', margin: 10, to: '[data-animal="zebra"]', at: x: 'left'
  #   nextOn: click: '[data-animal="zebra"]'
  #   className: 'arrow right'

  # new Step
  #   header: -> inline translate 'p', 'classify.tutorial.confirmZebraHeader'
  #   content: -> inline translate 'p', 'classify.tutorial.confirmZebra'
  #   attachment: x: 'right', to: '.animal-details .image-changer', at: x: 'left'
  #   className: 'arrow right'

  # new Step
  #   header: -> inline translate 'p', 'classify.tutorial.identifyZebraHeader'
  #   content: -> inline translate 'p', 'classify.tutorial.identifyZebra'
  #   attachment: x: 'right', margin: 10, to: '.animal-details .options', at: x: 'left'
  #   nextOn: click: 'button[name="identify"]'
  #   className: 'arrow right'

  new Step
    header: -> inline translate 'p', 'classify.tutorial.finishHeader'
    content: -> inline translate 'p', 'classify.tutorial.finish'
    attachment: y: 'bottom', margin: 10, to: 'button[name="finish"]', at: y: 'top'
    className: 'arrow down'
    nextOn: click: 'button[name="finish"]'
]
