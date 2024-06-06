class HelloWorld
  # Defining a class method named "hello" in the HelloWorld class. This method is being called on the class itself and takes an optional parameter with a default value of "nil". This allows the method to be called with or without an argument, making it more flexible and easier to use in different situations.
  def self.hello(name = nil)
    if name
      "Hello, #{name}!"
    else
      "Hello, World!"
    end
  end
end

puts HelloWorld.hello
puts HelloWorld.hello("Alice")
puts HelloWorld.hello("Bob")
