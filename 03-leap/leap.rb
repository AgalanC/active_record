class Year
=begin

Line "def self.leap?(year)"  defines a "class" method named "leap?" on the Year class that takes one argument/parameter called "year."

"leap?":
The "leap?" part of the method definition is the name of the "class" method. The "?" at the end of the method name is a Ruby convention indicating that the method returns a boolean value (true or false).

Naming Convention: Methods that return boolean values often end with a "?" to indicate their purpose and make the code more readable.

=end
  def self.leap?(year)
=begin

if year % 400 == 0:
Checks if the year is divisible by 400. If true, the year is a leap year.

elsif year % 100 == 0:
If the year is not divisible by 400 but is divisible by 100, it is not a leap year.

elsif year % 4 == 0:
If the year is not divisible by 100 (or 400) but is divisible by 4, it is a leap year.

else:
If none of the above conditions are met, the year is not a leap year.

The method then returns true or false based on these conditions.

=end
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

=begin

These lines call the "leap?" "class" method defined within the Year class and they all pass different integers/whole numbers (that represent different calendar years) as arguments/parameters.

What Happens:
Method Call: The "leap?" method is called on the Year class with an argument.
Execution: Inside the "leap?" method, the provided argument (year) is evaluated against several conditions.
Return Value: The result of this evaluation (either true or false) is then returned by the method.
Output: The puts method then displays this result on the console.

=end
puts Year.leap?(1996)  # True
puts Year.leap?(1997)  # False
puts Year.leap?(1998)  # False
puts Year.leap?(1900)  # False
puts Year.leap?(1800)  # False
puts Year.leap?(2400)  # True
puts Year.leap?(2000)  # True
