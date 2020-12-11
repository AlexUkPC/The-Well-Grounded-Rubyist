p [1, 3, 5, 4, 2].max
p %w(Ruby C APL Perl Smalltalk).min
p %w(Ruby C APL Perl Smalltalk).min { |a, b| a.size <=> b.size }
p %w(Ruby C APL Perl Smalltalk).min_by { |lang| lang.size }
p %w(Ruby C APL Perl Smalltalk).minmax
p %w(Ruby C APL Perl Smalltalk).minmax { |lang| lang.size }

state_hash = { "New York" => "NY", "Maine" => "ME", "Alaska" => "AK", "Alabama" => "AL" }
p state_hash.min
p state_hash.min_by { |name, abbr| name }
p state_hash.min_by { |name, abbr| abbr }
