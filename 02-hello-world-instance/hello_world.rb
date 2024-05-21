class HelloWorld
  def initialize(name)
    @name = name
  end

  def hello(name = nil)
    if name
      "Hello, #{name}. My name is #{@name}!"
    else
      "Hello, World. My name is #{@name}!"
    end
  end
end


wally = HelloWorld.new("Wally")
puts wally.hello                      # Output: 'Hello, World. My name is Wally!'

daisy = HelloWorld.new("Daisy")       # Output: 'Hello, Daisy. My name is Wally!'
puts daisy.hello


puts wally.hello('Alice')             # Output: 'Hello, Alice. My name is Wally!'
puts wally.hello('Bob')               # Output: 'Hello, Bob. My name is Wally!'

puts daisy.hello("Bob")               # Output: 'Hello, Bob. My name is Daisy!'
