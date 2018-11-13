# look at application.example.yml for an explanation of variables
# TODO: move specific model configuration variables in models
# maximum date for repeating events
END_TIME = Date.parse('1 Jan, 2016').to_time
CONTRIBUTE_MAX_LENGTH = (ENV['CONTRIBUTE_MAX_LENGTH'] || 2000).to_i
DEFAULT_CHANGE_ADVANCED_OPTIONS = (ENV['DEFAULT_CHANGE_ADVANCED_OPTIONS'].try(:downcase) == 'true')
DEFAULT_ANONIMA = (ENV['DEFAULT_ANONIMA'].try(:downcase) == 'true')
DEFAULT_GROUP_ACTIONS = ENV['DEFAULT_GROUP_ACTIONS'].split(',').map(&:strip).map(&:to_sym)
DEFAULT_AREA_ACTIONS = ENV['DEFAULT_AREA_ACTIONS'].split(',').map(&:strip).map(&:to_sym)
CONTRIBUTE_MARKS = (ENV['CONTRIBUTE_MARKS'] || 3).to_i
DEBATE_VOTE_DIFFERENCE = (ENV['DEBATE_VOTE_DIFFERENCE'] || 10).to_i.minutes
COMMENTS_PER_PAGE = (ENV['COMMENTS_PER_PAGE'] || 5).to_i
PROPOSALS_PER_PAGE = (ENV['PROPOSALS_PER_PAGE'] || 10).to_i
TOPICS_PER_PAGE = (ENV['TOPICS_PER_PAGE'] || 10).to_i
LIMIT_COMMENTS = (ENV['LIMIT_COMMENTS'].try(:downcase) == 'true')
COMMENTS_TIME_LIMIT = (ENV['COMMENTS_TIME_LIMIT'] || 30).to_i.seconds
LIMIT_PROPOSALS = (ENV['LIMIT_PROPOSALS'].try(:downcase) == 'true')
PROPOSALS_TIME_LIMIT = (ENV['PROPOSALS_TIME_LIMIT'] || 60).to_i.seconds
LIMIT_GROUPS = (ENV['LIMIT_GROUPS'].try(:downcase) == 'true')
GROUPS_TIME_LIMIT = (ENV['GROUPS_TIME_LIMIT'] || 24).to_i.hours
ROTP_DRIFT = (ENV['ROTP_DRIFT'].to_i || 20)
OTHERS_CHOOSE_VOTE_DATE_DAYS = (ENV['OTHERS_CHOOSE_VOTE_DATE_DAYS'] || 5).to_i
DEFAULT_EMAIL_PROTOCOL = ENV['DEFAULT_EMAIL_PROTOCOL'] || 'https'
SENTRY_ACTIVE = ENV['SENTRY_PUBLIC_KEY'].present?
EDIT_PROPOSAL_TIME_LIMIT = (ENV['EDIT_PROPOSAL_TIME_LIMIT'] || 10).to_i.minutes

NEWSLETTER_FROM_ADDRESS = ENV['NEWSLETTER_FROM_ADDRESS'] # the email the newsletter is sent from
NEWSLETTER_TWITTER_URL = ENV['NEWSLETTER_TWITTER_URL'] # your twitter page
NEWSLETTER_FACEBOOK_URL = ENV['NEWSLETTER_FACEBOOK_URL'] # your facebook oage
NEWSLETTER_GOOGLEPLUS_URL = ENV['NEWSLETTER_GOOGLEPLUS_URL'] # your facebook oage
NEWSLETTER_PREFERENCES_URL = ENV['NEWSLETTER_PREFERENCES_URL'] # subscribers management url
NEWSLETTER_LOGO_PATH = 'logo120.png' # path to your logo asset

NEWSLETTER_HOME_URL = ENV['NEWSLETTER_HOME_URL'] # TODO: to remove and replace with SITE
APP_SHORT_NAME = ENV['APP_SHORT_NAME'] # your app name
APP_LONG_NAME = ENV['APP_LONG_NAME'] # your app name

UPLOAD_LIMIT_GROUPS = (ENV['UPLOAD_LIMIT_GROUPS'] || 50).to_i * 1024 * 1024
UPLOAD_LIMIT_IMAGES = (ENV['UPLOAD_LIMIT_IMAGES'] || 2).to_i * 1024 * 1024
UPLOAD_LIMIT_ATTACHMENTS = (ENV['UPLOAD_LIMIT_ATTACHMENTS'] || 5).to_i * 1024 * 1024

SESSION_DAYS = (ENV['SESSION_DAYS'] || 14).to_i
