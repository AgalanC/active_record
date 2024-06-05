class Grains
# This line defines a "class" method named "square" that takes one argument named "num". This method is part of the Grains class and can be called directly on the Grains class itself, rather than on an instance of the Grains class.
  def self.square(num)
=begin

Putting these lines into context within the Grains class, the "square" "class" method is designed to ensure that the input "num" is a valid square number (on a standard chessboard between 1 and 64), and then calculates the number of grains on that square using the formula "2**(num - 1)."

"raise ArgumentError, "Square must be between 1 and 64"":
    Raises an "ArgumentError" with a specific error message if the condition following "unless" is not met.
"unless (1..64).include?(num)":
    The "unless" keyword is used to execute the "raise" statement if the condition "(1..64).include?(num)" is false. The condition "(1..64).include?(num)" checks if the value of "num" is within the range from 1 to 64, inclusive. If "num" is not in this range, the "raise" statement will be executed, causing an "ArgumentError" with the message "Square must be between 1 and 64".

"2**(num - 1)":
    Calculates and returns the result of raising 2 to the power of "(num - 1)". In Ruby, ** is the "exponentiation operator". So, if "num" is 1, this would compute "2**0" which equals 1. If "num" is 2, it computes "2**1" which equals 2, and so on. This is typically used in problems related to geometric progression.

=end
    raise ArgumentError, "Square must be between 1 and 64" unless (1..64).include?(num)
    2**(num - 1)
  end
# This line defines a "class" method named "total" that belongs to the Grains class itself, not to instances of Grains.
  def self.total
=begin

In essence, this line of code iterates over each number from 1 to 64, calculates the number of grains on each square using the "square" "class" method of the Grains class, and accumulates the total sum of grains.

What Happens:
  (1..64): This creates a range of numbers from 1 to 64, inclusive.

  .reduce(0): This method is used to accumulate a single value from the range.
      The 0 is the initial value for the accumulator (sum).

  { |sum, square| sum + self.square(square) }: This is a block that method "reduce" will execute for each element in the range.
      "sum" is the accumulator that starts at 0.
      "square" represents each element in the range from 1 to 64.
      "self.square(square)" presumably calls the "class" method "square" of the Grains class, passing the current "square" value.
      "sum + self.square(square)" adds the result of "self.square(square)" to the current value of "sum".

=end
    (1..64).reduce(0) { |sum, square| sum + self.square(square) }
  end
end

=begin

This line calls the "class" method named "square" on the Grains class with an argument of 1.

Within the "square" method:
    The code first checks if "num" (which is 1 in this case) is within the range "1..64". Since 1 is within this range, it doesn't raise an ArgumentError.
    It then calculates "2**(1 - 1)", which simplifies to "2**0". Since any number to the power of 0 is 1, the result is 1.

=end
puts Grains.square(1)
puts Grains.square(2)
puts Grains.square(3)
puts Grains.square(4)
puts Grains.square(16)
puts Grains.square(32)
puts Grains.square(64)
=begin

This line calls the "class" method named "total" on the Grains class.

Within the total method:
    The range "(1..64)" creates an enumerator for the numbers 1 through 64.
    The method "reduce(0)" is used to accumulate a sum starting from 0.
    The block "{ |sum, square| sum + self.square(square) }":
        For each number "square" in the range 1 to 64, it calls "self.square(square)", which computes "2**(square - 1)".
        It then adds this value to "sum".
        The process is repeated for each number in the range, effectively summing the number of grains on all 64 squares of a chessboard.
    The final result of this accumulation is the total number of grains on the chessboard.

=end
puts Grains.total
