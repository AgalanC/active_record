class Pangram
=begin

This line defines a "class" method called "is_pangram?" for the Pangram class. This method takes an optional parameter named "line", which defaults to an empty string.

What Happens:
def: Keyword used in Ruby to define a method.
self: "Self" refers to the class itself (Pangram). When you define a method using self, it becomes a class method, meaning it can be called directly on the class without needing an instance of the class.

is_pangram?: Name of the "class" method. This method it's a question method, indicated by the "?" at the end of the name. It suggests that the method will return a boolean value (true or false), indicating whether something is a pangram or not.

(line=' '): This is a parameter to the method. It's setting a default value of an empty string (' ') for the "line" parameter. If no argument is passed when calling this method, it will default to an empty string.

=end
  def self.is_pangram?(line=' ')
=begin

This line checks whether every letter of the alphabet from 'a' to 'z' is present in the given string named "line", regardless of case (sensitive or insensitive). If every letter is found at least once, the "all?" method returns true, indicating that the "line" string is a pangram; otherwise, it returns false.

What Happens:
('a'..'z'): This part creates a range from 'a' to 'z', inclusive. It represents all lowercase letters of the English alphabet.
"Inclusive" refers to the fact that the range 'a'..'z' includes both the starting letter 'a' and the ending letter 'z'.

.all? { |char| ... }: This part is an iterator method called all?. It iterates over each character (represented by char) in the range ('a'..'z') and returns true if the block (the code within {}) returns true for every single element in the collection.

{ |char| line.downcase.include? (char) }: This block is passed to the "all?" method. It iterates over each character (char) in the range ('a'..'z'). Within the block:
    line.downcase: This converts the "line" variable to lowercase. This ensures case insensitivity when checking for letters.

    .include? (char): This checks if the lowercase version of variable "line" includes the current substring/character "char".

    parameter "(char)": "char" is each character in the range 'a' to 'z', iterated one at a time by the "all?" method.
      For each iteration, "char" is a single lowercase letter from the alphabet (e.g., 'a', 'b', 'c', ..., 'z').

=end
    ('a'..'z').all? { |char| line.downcase.include? (char) }
  end
end

=begin

"Pangram.is_pangram?('')" calls the "is_pangram?" "class" method of the Pangram class with an empty string '' as the argument.

Inside the "is_pangram?" method:
"('a'..'z').all? { |char| line.downcase.include? (char) }" is evaluated.
"line.downcase" converts line to lowercase, but since line is an empty string, it remains an empty string.
The "all?" method iterates over each character in the range ('a'..'z'), checking if each character is included in the empty string.

=end
puts Pangram.is_pangram?('')

=begin

"Pangram.is_pangram?('the quick brown fox jumps over the lazy dog')" calls the "is_pangram?" "class" method of the Pangram class with the string 'the quick brown fox jumps over the lazy dog' as the argument.

Inside the is_pangram? method:
"('a'..'z').all? { |char| line.downcase.include? (char) }" is evaluated.
"line.downcase" converts the input string to lowercase, resulting in 'the quick brown fox jumps over the lazy dog' (which is already lowercase).
The "all?" method iterates over each character in the range ('a'..'z'), checking if each character is included in the lowercased input string.

=end
puts Pangram.is_pangram?('the quick brown fox jumps over the lazy dog')
puts Pangram.is_pangram?('a quick movement of the enemy will jeopardize five gunboats')
puts Pangram.is_pangram?('the quick brown fish jumps over the lazy dog')
puts Pangram.is_pangram?('the_quick_brown_fox_jumps_over_the_lazy_dog')
puts Pangram.is_pangram?('the 1 quick brown fox jumps over the 2 lazy dogs')
puts Pangram.is_pangram?('7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog')
puts Pangram.is_pangram?('"Five quacking Zephyrs jolt my wax bed."')
puts Pangram.is_pangram?('Victor jagt zwölf Boxkämpfer quer über den großen Sylter Deich.')
