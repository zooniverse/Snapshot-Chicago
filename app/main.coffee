translate = require 't7e'
enUs = require './translations/en_us'
translate.load enUs

$ = window.jQuery
require 'spine'
window.slider = require './lib/jquery.slider.min'

Navigation = require './controllers/navigation'

Route = require 'spine/lib/route'
AboutPage = require './controllers/about_page'
HomePage = require './controllers/home_page'
EducationPage = require './controllers/education_page'
Classifier = require './controllers/classifier'
FilterPage = require './controllers/filter_page'
PressPage = require './controllers/press_page'
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

GoogleAnalytics = require 'zooniverse/lib/google-analytics'
new GoogleAnalytics
  account: 'UA-53428944-3'
  domain: 'chicagowildlifewatch.org'

app = {}
api = if window.location.hostname is 'www.chicagowildlifewatch.org'
  new zooniverse.Api project: 'chicago', host: 'https://www.chicagowildlifewatch.org', path: '/_ouroboros_api/proxy'
else
  new zooniverse.Api project: 'chicago'

#TODO rewrite this logic for sorted seasons
# Api.get '/projects/serengeti', (project) ->
#   sortedSeasons = for season, {_id: id, total, complete} of project.seasons
#     total ?= 0
#     complete ?= 0
#     {season, id, total, complete}

#   sortedSeasons.sort (a, b) ->
#       a.season > b.season

#   seasons.push sortedSeasons...

app.stack = new Stack
  className: "main #{Stack::className}"

  controllers:
    home: HomePage
    about: AboutPage
    classify: Classifier
    profile: Profile
    education: EducationPage
    filter: FilterPage
    press: PressPage

  routes:
    '/': 'home'
    '/about': 'about'
    '/classify': 'classify'
    '/profile': 'profile'
    '/education': 'education'
    '/filter': 'filter'
    '/press': 'press'

  default: 'home'

Route.setup()

User.fetch()

Notifier.init()
window.addEventListener 'hashchange' , -> Notifier.hide()

app.topBar = new TopBar
app.footer = new Footer

navigation = new Navigation
app.navigation = navigation

app.navigation.el.appendTo  'body'
app.stack.el.appendTo 'body'
app.topBar.el.appendTo 'body'

siteFooter = $('<div class="site-footer"></div>').append app.footer.el
siteFooter.appendTo 'body'

window.app = app
module.exports = window.app
