class Cookbook
  attr_accessor :title, :author

  def initialize
    @receipes = []
  end

  def method_missing(m, *args, &block)
    @receipes.public_send(m, *args, &block)
  end
end

class Recipe
  attr_accessor :main_ingredient

  def initialize(main_ingredient)
    @main_ingredient = main_ingredient
  end
end

cb = Cookbook.new
recipe_for_cake = Recipe.new("flour")
recipe_for_chicken = Recipe.new("chicken")
cb << recipe_for_cake
cb << recipe_for_chicken
p chicken_dishes = cb.select { |recipe| recipe.main_ingredient == "chicken" }
chicken_dishes.each { |dish| puts dish.main_ingredient }

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name, @age = name, age
  end

  def method_missing(m, *args, &block)
    if /set_(.*)/.match(m)
      self.public_send("#{$1}=", *args)
    else
      super
    end
  end

  def respond_to_missing?(m, include_private = false)
    /set_/.match(m) || super
  end
end

person = Person.new("Joe", 37)
person.set_age(38)
p person.age
p person.respond_to?(:set_age)

#var 2
person2 = Person.new("Mat", 22)
p person2.method(:set_age)
p person2.age
p person2.respond_to?(:set_age)
