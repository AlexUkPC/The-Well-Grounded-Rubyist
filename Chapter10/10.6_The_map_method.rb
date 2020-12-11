names = %w(David yukihiro Chad Amy)
p names.map { |name| name.upcase }
p names.map(&:upcase)
