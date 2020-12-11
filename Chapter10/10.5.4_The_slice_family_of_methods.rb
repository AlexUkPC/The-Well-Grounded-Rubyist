parsed_report = ["Top Secret Report", "Eyes Only", "=====", "Title: The Meaning of Life"]
p parsed_report.slice_before(/=/).to_a
parsed_report = ["Top Secret Report", "Eyes Only", "=====", "Title: The Meaning of Life", "Author:[REDACTED]", "Date: 2018-01-01", "=====", "Abstract:\n"]
p parsed_report.slice_after(/=/).to_a

p (1..10).slice_before { |num| num % 2 == 0 }.to_a

p (File.open("10.5.4_The_slice_family_of_methods.dat").slice_before do |line|
    line.start_with?("=")
  end.to_a)

p [1, 2, 3, 3, 4, 5, 6, 6, 7, 8, 8, 8, 9, 10].slice_when { |i, j| i == j }.to_a
