class ThreadedTyper
  def initialize(client, channel)
    @client = client
    @channel = channel

    puts "threaded for #{channel}"
    run
  end

  def run
    puts "running for #{@channel}"
    repeat = 6
    Thread.new do
      count = 0
      while count < repeat
        @client.typing channel: @channel

        count += 1
        delay = 2 + rand(10)
        puts "count: #{count} delay: #{delay}"
        sleep delay
      end

      puts "done"
    end
  end
end