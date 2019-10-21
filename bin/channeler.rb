class Channeler
  def self.run
    @@client = Slack::Web::Client.new
    @@real_time_client = Slack::RealTime::Client.new

    @@real_time_client.on :hello do
      puts "Successfully connected, welcome '#{@@real_time_client.self.name}' to the '#{@@real_time_client.team.name}' team"
      self.list_channels
    end

    @@real_time_client.start!
  end

  def self.list_channels
    channels = @@client.channels_list.channels

    interested_channels = [
      'seattle-web-071519',
      'seattle-web-080519',
      'seattle-web-082619',
      'seattle-random',
      'hot-nuggets',
      'all-about-code',
      'seattle-brogue',
    ]

    seattle_channels = channels.select {|c| interested_channels.include?(c.name)}
    puts seattle_channels
    seattle_channels.each do |c|
      ThreadedTyper.new(@@real_time_client, c.id, c.name)
    end
  end
end