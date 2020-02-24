class DemoController < ApplicationController
  # http_basic_authenticate_with name: "1", password: "Nidhi@2013"
  def status

    host = 'localhost'
    port = 3000

    s = TCPSocket.open(host, port)

    s.puts "lista"

    @list = Array.new()
    while line = s.gets             # Read lines from the socket
      @list.push line.chop                # And print with platform line terminator
    end
    s.close

  end

end
