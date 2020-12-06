class Roaster
  attr_accessor :players
end

class Player
  attr_accessor :name, :position

  def initialize(name, position)
    @name = name
    @position = position
  end
end

moore = Player.new("Maya Moore", "Forward")
taurasi = Player.new("Diana Taurasi", "Guard")
tourney_roaster1 = Roaster.new
tourney_roaster1.players = [moore, taurasi]

if tourney_roaster1.players.first.position == "Forward"
  puts "Forward: #{tourney_roaster1.players.first.name} "
end

tourney_roaster2 = Roaster.new
if tourney_roaster2.players&.first&.position == "Forward"
  puts "Forward: #{tourney_roaster1.players.first.name} "
end
