p (%w{david black}.map(&:capitalize))

class Symbol
  def to_proc
    puts "In the new Symbol#to_proc"
    Proc.new{|obj| obj.public_send(self)}
  end
end
p (%w{david black}.map(&:capitalize))