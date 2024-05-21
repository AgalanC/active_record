class Year
  def self.leap?(year)
    if year % 400 == 0
      true
    elsif year % 100 == 0
      false
    elsif year % 4 == 0
      true
    else
      false
    end
  end
end


puts Year.leap?(1996)  # True
puts Year.leap?(1997)  # False
puts Year.leap?(1998)  # False
puts Year.leap?(1900)  # False
puts Year.leap?(1800)  # False
puts Year.leap?(2400)  # True
puts Year.leap?(2000)  # True
