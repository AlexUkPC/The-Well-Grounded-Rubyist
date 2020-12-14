puts "Trying to read in some files..."
t = Thread.new do
  (0..2).each do |n|
    begin
      File.open("part0#{n}") do |f|
        text << f.readlines
      end
    rescue Errno::ENOENT
      puts "Messge from
            thread: Failed on n=#{n}"
      Thread.exit
    end
  end
end
t.join
puts "Finished!"

puts "==============="
t = Thread.new do
  puts "[Starting thread]"
  Thread.stop
  puts "[Reasuming thread]"
end
sleep 1
puts "Status of thread #{t.status}"
puts "Is thread stopped? #{t.stop?}"
puts "Is thread alive? #{t.alive?}"
puts
puts "Waking up thread and joinin it..."
t.wakeup
t.join
puts
puts "Is thread alive? #{t.alive?}"
puts "Inspect string for thread: #{t.inspect}"

puts "================="
f = Fiber.new do
  puts "Hi."
  Fiber.yield
  puts "Nice day."
  Fiber.yield
  puts "Bye!"
end
f.resume
puts "Back to the fiber"
f.resume
puts "One last message from the fiber:"
f.resume
puts "That's all!"
