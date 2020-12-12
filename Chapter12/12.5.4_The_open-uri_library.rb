require 'open-uri'
# deprecated! rubypage = open("http://rubycentral.org")
rubypage = URI.open("http://rubycentral.org")
puts rubypage.gets