require './lib/setup'

Navigation = require './controllers/navigation'
$ = require 'jqueryify'
Route = require 'spine/lib/route'
AboutPage = require './controllers/about_page'
HomePage = require './controllers/home_page'
Classifier = require './controllers/classifier'
Profile = require './controllers/profile'
# Explore = require './controllers/explore'
Api = require 'zooniverse/lib/api'
seasons = require './lib/seasons'
TopBar = require 'zooniverse/controllers/top-bar'
User = require 'zooniverse/models/user'
googleAnalytics = require 'zooniverse/lib/google-analytics'


{Stack} = require 'spine/lib/manager'
ContentPage = require './controllers/content_page'
feedbackContent = require './views/feedback_page'

BrowserDialog = require 'zooniverse/controllers/browser-dialog'
BrowserDialog.check()



#TODO convert to Zooniverse Language Manager
LanguagePicker = require './controllers/language_picker'
languagePicker = new LanguagePicker
languagePicker.el.prependTo document.body

# #TODO Analytics values
# googleAnalytics.init
#   account: 'Y?'
#   domain: 'X?'

app = {}

#TODO is that how we do it nowadays?
# User.bind 'sign-in', ->
#   $('html').toggleClass 'signed-in', User.current?


api = new Api project: 'serengeti'


#TODO rewrite this logic for sorted seasons
# Api.get '/projects/serengeti', (project) ->
#   sortedSeasons = for season, {_id: id, total, complete} of project.seasons
#     total ?= 0
#     complete ?= 0
#     {season, id, total, complete}

#   sortedSeasons.sort (a, b) ->
#       a.season > b.season

#   seasons.push sortedSeasons...

#TODO That's not how we do it nowadays
#User.count = project.user_count

#TODO do we need this
$('.before-load').remove()

app.stack = new Stack
  className: "main #{Stack::className}"

  controllers:
    home: HomePage
    about: AboutPage
    classify: Classifier
    profile: Profile
  
  routes:
    '/home': 'home'
    '/about': 'about'
    '/classify': 'classify'
    '/profile': 'profile'

  default: 'home'

# Load the top bar last since it fetches the user.
app.topBar = new TopBar
 

#TODO is this behavior needed?
# $(window).on 'request-login-dialog', ->
#   app.topBar.onClickSignUp()
#   app.topBar.loginForm.signInButton.click()
#   app.topBar.loginDialog.reattach()

Route.setup()

TranslationEditor = require 't7e/editor'
TranslationEditor.init() if !!~location.search.indexOf 'translate=1'

#TODO note Navigation does not extend from Controller c.f. Condors:app/controllers/SiteNavigation
navigation = new Navigation
app.navigation = navigation
#####################################################
# Append components to the document body
#####################################################

app.navigation.el.appendTo  "body"
app.stack.el.appendTo  "body"
app.topBar.el.appendTo "body"


window.app = app
module.exports = window.app
