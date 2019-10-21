class ChannelRandom
  def self.run
    client = Slack::Web::Client.new
    # client.chat_postMessage(channel: '#random', text: 'messing around with slack API, ignore me!', as_user: true)
  end
end