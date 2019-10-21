require 'bundler'
Bundler.require

require_all 'lib'
require_all 'bin'

Slack.configure do |config|
  config.token = ENV['STUDENT_SLACK_API_TOKEN']
end

client = Slack::Web::Client.new
client.auth_test