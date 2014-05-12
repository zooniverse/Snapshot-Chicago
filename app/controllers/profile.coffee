{Controller} = require 'spine'
Profile = require 'zooniverse/controllers/profile'

class ProfilePage extends Controller
  className: 'profile'

  constructor: ->
    super

    @profile ?= new Profile
    @html @profile.el

module.exports = ProfilePage
