class Pangram
  def self.is_pangram?(line=' ')
    ('a'..'z').all? { |char| line.downcase.include? (char) }
  end
end

puts Pangram.is_pangram?('')
puts Pangram.is_pangram?('the quick brown fox jumps over the lazy dog')
puts Pangram.is_pangram?('a quick movement of the enemy will jeopardize five gunboats')
puts Pangram.is_pangram?('the quick brown fish jumps over the lazy dog')
puts Pangram.is_pangram?('the_quick_brown_fox_jumps_over_the_lazy_dog')
puts Pangram.is_pangram?('the 1 quick brown fox jumps over the 2 lazy dogs')
puts Pangram.is_pangram?('7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog')
puts Pangram.is_pangram?('"Five quacking Zephyrs jolt my wax bed."')
puts Pangram.is_pangram?('Victor jagt zwölf Boxkämpfer quer über den großen Sylter Deich.')
