class Auth
  def self.run
    client = Slack::Web::Client.new
    client.auth_test
    byebug
  end
end