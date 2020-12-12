File.open("12.2.9_hits.txt") do |f|
  f.each do |record|
    play, artist, year = record.chomp.split("/")
    puts "\"#{play},\" performed by #{artist}, reached #1 in #{year}"
  end
end
#partea a 2-a inca nu
