{ Controller } = require 'spine'

class PressPage extends Controller
  className: 'press-page'
  template: require '../views/press_page'

  constructor: ->
    super
    @html @template @

    document.addEventListener 'DOMContentLoaded', ->
      $('#slider').nivoSlider
        effect: 'fade'
        directionNav: false
        pauseTime: 5000

module.exports = PressPage
