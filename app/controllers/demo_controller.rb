class DemoController < ApplicationController

  def status

    host = 'localhost'
    port = 2291

    s = TCPSocket.open(host, port)

    s.puts "lista"

    @list = Array.new()
    while line = s.gets             # Read lines from the socket
      @list.push line.chop                # And print with platform line terminator
    end
    s.close

  end

end
