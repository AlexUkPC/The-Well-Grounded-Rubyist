puts [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].find { |n| n > 5 }
p [1, 2, 3, nil, 4, 5, 6].find { |n| n.nil? }

class Rainbow
  include Enumerable

  def each
    yield "red"
    yield "orange"
    yield "yellow"
    yield "green"
    yield "blue"
    yield "indigo"
    yield "violet"
  end
end

r = Rainbow.new
p r.select { |color| color.size == 6 }
p r.map { |color| color[0, 3] }
p r.drop_while { |color| color.size < 5 }
