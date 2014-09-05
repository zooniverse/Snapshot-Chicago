{Controller} = require 'spine'
Profile = require 'zooniverse/controllers/profile'
translate = require "t7e"

class ProfilePage extends Controller
  className: 'profile'

  constructor: ->
    super

    @profile ?= new Profile
    @html @profile.el

    @el.prepend "<div class='secondary-header'>#{translate 'h1', 'profile.header'}</div>"

module.exports = ProfilePage
