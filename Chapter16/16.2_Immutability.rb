class Record
  attr_accessor :artist, :title, :year, :rating

  def initialize(artist, title, year, rating)
    @artist = artist
    @title = title
    @year = year
    @rating = rating
  end
end

the_useen = Record.new("Quasimoto", "The Unseen", 2000, 3.5)
p the_useen.rating
the_useen.rating = 4.5
p the_useen.rating
the_useen.freeze
p the_useen.frozen?
the_useen.artist = "Madlib" #  can't modify frozen Record
