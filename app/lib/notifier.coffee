$ = window.jQuery

# Notifier.init() to create it

# Notifier.message("foo") to message to users
# pass in a default color Notifier.message("bar", Notifier.blue)
# or a hex string Notifier.message("baz" , "#123ABC")

# Notifier.hide() to make it go away

Notifier =
  init: ->
    @el = $("""
      <div id='notifier'>
        <img class='notifier-close' src='./images/x-icon.svg'>
        <div class='notifier-content'></div>
        <button class='action-button'>Continue</button>
      """)
      .appendTo $('body')

    @content = @el.find('.notifier-content')
    @actionButton = @el.find('.action-button')
    @closeIcon = @el.find('.notifier-close, .action-button')
      .on 'click', => @hide()

    window.onresize = => @setPosition() if @notifierIsVisible()

  green: "#3EA535"
  grey: "#808080"
  red: "#ee4737"
  blue: "#2099de"

  anchor: -> $(".site-navigation")

  show: (transitionTime = 150) ->
    @setPosition().slideDown(transitionTime)

  notifierIsVisible: ->
    @el.is(':visible')

  setPosition: ->
    @el.css {top: @topOffset()}

  topOffset: ->
    anchor = @anchor()
    anchor.innerHeight() - anchor.position().top

  hide: (transitionTime = 150) ->
    @el.slideUp(transitionTime)

  message: (message, backgroundColor = @grey, action = false) ->
    setTimeout =>
      @show().css {backgroundColor: backgroundColor}
      @content.html message
      @actionButton.toggle(action)

module?.exports = Notifier

