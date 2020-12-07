puts "Two plus two is #{2 + 2}."
puts 'Two plus two is #{2+2}.'

puts "Escaped interpolation: \"\#{2+2}\""

puts "Backslashes (\\) have to be escaped in double quotes"
puts 'You can just type \ once in a single quoted string'
puts "But witchever type of quotation mark you use..."
puts "...you have to escape its quotation symbolm such as \"."
puts 'That applies to \' in single-quoted strings too.'
puts 'Backslash-n just looks like \n between single quotes.'
puts "But it means newline\nin a double-quoted string"
puts 'Same with \t, which comes out as \t with single quotes...'
puts "...but insert a tab character:\tinside double quotes."
puts "You can escape the backslast to get \\n and \\t with double quotes."

puts %q{You needn't escape apostrophes or quotation marks (', '', ", "") when using %q}

puts %q-A string-
puts %Q/Another string/
puts %[Yet another sing]

puts %Q{I can put {} in here unescaped.}
puts %q(I have to escape \(if I use it alone in here.)                                   #)
puts %Q{And the same goes for \}.}

text = <<EOM
This is the first line of text.
This is the second line.
Now we're done
EOM
puts text

query = <<SQL
SELECT count (DISTINCT users.id)
FROM users
WHERE users.first_name='Joe';
SQL
puts query

text = <<-EOM
The EOM doesn't have to be flushed left!
        EOM
puts text

class RubyWelcomeWagon
  def message
    <<~EOM
      Welcome to the world of Ruby!
      We're happy you're here!
    EOM
  end
end

puts RubyWelcomeWagon.new.message

a = <<EOM.to_i * 10
5
EOM
puts a

array = [1, 2, 3, <<EOM, 4]
This is the heredoc!
It becomes array[3]
EOM
p array
