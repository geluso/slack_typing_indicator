class Typer
  def self.run
    client = Slack::RealTime::Client.new

    client.on :hello do
      puts "Successfully connected, welcome '#{client.self.name}' to the '#{client.team.name}' team"
    end

    client.on :message do |data|
      puts "channel: #{data.channel;} user: #{data.user} text: #{data.text}"
      ThreadedTyper.new(client, data.channel)
    end
    
    client.on :close do |_data|
      puts "Client is about to disconnect"
    end
    
    client.on :closed do |_data|
      puts "Client has disconnected successfully!"
    end
    
    client.start!
    client.typing channel: 'CLQGUNL14'
  end
end
