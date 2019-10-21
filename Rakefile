require_relative './config/environment.rb'

desc 'runs slack typer'
task :run do
  Typer.run
end

desc 'test auth'
task :auth do
  client = Slack::Web::Client.new
  client.auth_test
  byebug
end