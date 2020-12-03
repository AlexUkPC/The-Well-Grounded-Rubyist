class Cake
  def initialize(batter)
    @batter = batter
    @baked = true
  end
end

class Egg
end

class Flour
end

class Baker
  def bake_cake
    @batter = []
    pour_floor
    add_egg
    stir_batter
    return Cake.new(@batter)
  end

  private

  def pour_floor
    @batter.push(Flour.new)
  end

  def add_egg
    @batter.push(Egg.new)
  end

  def stir_batter
  end
end

b = Baker.new
puts b.bake_cake
