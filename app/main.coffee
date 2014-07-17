translate = require 't7e'
enUs = require './translations/en_us'
translate.load enUs

$ = window.jQuery
require 'spine'

Navigation = require './controllers/navigation'

Route = require 'spine/lib/route'
AboutPage = require './controllers/about_page'
HomePage = require './controllers/home_page'
Classifier = require './controllers/classifier'
Profile = require './controllers/profile'
Api = require 'zooniverse/lib/api'
Project  = require 'zooniverse/models/project'

seasons = require './lib/seasons'
TopBar = require 'zooniverse/controllers/top-bar'
Footer = require 'zooniverse/controllers/footer'
Notifier = require './lib/notifier'
User = require 'zooniverse/models/user'
googleAnalytics = require 'zooniverse/lib/google-analytics'

{Stack} = require 'spine/lib/manager'

BrowserDialog = require 'zooniverse/controllers/browser-dialog'
BrowserDialog.check()

t7e = require 't7e'
enUs = require './translations/en_us'
LanguageManager = require 'zooniverse/lib/language-manager'
languageManager = new LanguageManager
  translations:
    en: label: 'English', strings: enUs

languageManager.on 'change-language', (e, code, strings) ->
  t7e.load strings
  t7e.refresh()

#TODO investigate this functionality
TranslationEditor = require 't7e/editor'
TranslationEditor.init() if !!~location.search.indexOf 'translate=1'

# #TODO Analytics values
# googleAnalytics.init
#   account: 'Y?'
#   domain: 'X?'

app = {}
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

Route.setup()

User.fetch()

Notifier.init()

app.topBar = new TopBar
app.footer = new Footer

#TODO note Navigation does not extend from Controller c.f. Condors:app/controllers/SiteNavigation
navigation = new Navigation
app.navigation = navigation

app.navigation.el.appendTo  'body'
app.stack.el.appendTo  'body'
app.topBar.el.appendTo 'body'

siteFooter = $('<div class="site-footer"></div>').append app.footer.el
siteFooter.appendTo 'body'

Project.fetch()


window.app = app
module.exports = window.app
