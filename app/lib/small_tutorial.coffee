$ = window.jQuery

translate = require "t7e"
User = require "zooniverse/models/user"

class SmallTutorial
  html = """
    <div id='small-tutorial'>
      <div class='tutorial-slide'>
        <button id='close'><span id='skip'>Skip</span><img id='tut-x-icon' src='./images/x-icon.svg'></button>
        <div id='slides-container'></div>
        <button id='next'>Next</button>
        <div class='dots'></div>
      </div>
    </div>
  """

  create: ->
    $("body").append(html)
    @dots = $("#small-tutorial").find(".dots")

    for slide, i in @slides
      $("#small-tutorial #slides-container").append "
        <div id='slide#{i + 1}'>
          <div class='top-half'>
            <img src=#{slide.image}>
          </div>

          <div class='bottom-half'>
            <h1>#{slide.title}</h1>
            <p>#{slide.content}</p>
          </div>
        </div>"
      @dots.append("<div class='dot'></div>")

  constructor: ({@slides}) ->
    @create()
    @el = $("#small-tutorial").hide()

    @nextBtn = @el.find("button#next")
    @closeBtn = @el.find("button#close")
    @dot = @el.find(".dot")

    @closeBtn.on 'click', => @exit()
    @nextBtn.on 'click', => @onClickNext()
    @dot.on 'click', (e) => @showSlide @el.find(e.target).index() + 1

    @numberOfSlides = @slides.length

  start: ->
    @el.fadeIn(250)
    @showSlide(1)
    window.addEventListener "click", @exitIfClickOutside

  exitIfClickOutside: (e) => @exit() if e.target.id is "tutorial"

  currentSlide: -> @el.find('.dot.active').index() + 1

  activateSlide: (num) ->
    @el.find("#slide#{num}")
      .show()
      .siblings().hide()

  activateDot: (num) ->
    @el.find(".dot:nth-child(#{num})")
      .addClass("active")
      .siblings().removeClass("active")

  setNextButtonText: (num) ->
    @nextBtn.html(@nextButtonText(num))

  nextButtonText: (num) ->
    if num is @numberOfSlides then translate 'Finish' else translate 'Next'

  onClickNext: ->
    if @currentSlide() is @numberOfSlides
      @exit()
    else
      @showSlide(@currentSlide() + 1)
      
  showSlide: (num) ->
    @activateSlide(num)
    @activateDot(num)
    @setNextButtonText(num)

  exit: ->
    @el.fadeOut(250)
    window.removeEventListener "click", @exitIfClickOutside


module?.exports = SmallTutorial
