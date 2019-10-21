require_relative './config/environment.rb'

desc 'runs slack typer'
task :type do
  Typer.run
end

desc 'test auth'
task :auth do
  AuthTest.run
end

desc 'listen to messages'
task :listen do
  Listen.run
end

desc 'run background tasks'
task :proc do
  ProcPractice.run
end

desc 'list channels'
task :channels do
  Channeler.run
end