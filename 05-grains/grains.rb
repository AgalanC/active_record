class Grains
  # Method to calculate the number of grains on a specific square
  def self.square(num)
    raise ArgumentError, "Square must be between 1 and 64" unless (1..64).include?(num)
    2**(num - 1)
  end

  # Method to calculate the total number of grains on the chessboard
  def self.total
    (1..64).reduce(0) { |sum, square| sum + self.square(square) }
  end
end

puts Grains.square(1)
puts Grains.square(2)
puts Grains.square(3)
puts Grains.square(4)
puts Grains.square(16)
puts Grains.square(32)
puts Grains.square(64)
puts Grains.total
