class MyNewException < Exception
end

begin
  puts "About to raise exception"
  raise MyNewException
rescue MyNewException => e
  puts "Just raused an exception: #{e}"
end

module TextHandler
  class InvalidLineError < StandardError
  end
end

def line_from_file(filename, substring)
  fh = File.open(filename)
  begin
    line = fh.gets
    raise TextHandler::InvalidLineError unless line.include?(substring)
    return line
  rescue TextHandler::InvalidLineError
    puts "Invalid line!"
    raise
  ensure
    fh.close
  end
end

line_from_file("2.txt", "da")
