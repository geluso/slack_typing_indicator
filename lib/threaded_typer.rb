class ThreadedTyper
  def initialize(client, channel_id, name='Unknown')
    @client = client
    @channel_id = channel_id
    @name = name

    puts "threaded for #{name} #{channel_id}"
    run
  end

  def run
    puts "running for #{@channel_id}"
    repeat = 6
    is_infinity = true

    Thread.new do
      count = 0
      while is_infinity || count < repeat
        @client.typing channel: @channel_id

        count += 1
        delay = 2 + rand(10)
        puts "name: #{@name} count: #{count} delay: #{delay} infinity: #{is_infinity}"
        sleep delay
      end

      puts "done"
    end
  end
end