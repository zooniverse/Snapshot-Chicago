{Controller} = require 'spine'
Profile = require 'zooniverse/controllers/profile'
translate = require "t7e"

class ProfilePage extends Controller
  className: 'profile'

  constructor: ->
    super

    @profile ?= new Profile
    @html @profile.el

    @el.prepend "<div class='secondary-header'><h1>#{translate 'profile.header'}</h1></div>"

module.exports = ProfilePage
