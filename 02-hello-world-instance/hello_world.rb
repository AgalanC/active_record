class HelloWorld
  # The "initialize" method is typically used for instance methods, not class methods.

  # This defines the "initialize" method with one parameter. It is often referred to as the "constructor" of the class.

  ##  The "initialize" method allows to set up the initial state of an object. For example, you can initialize instance variables with values passed as parameters.
  ##  The "initialize" method also encapsulates the setup process within the class, making the object's interface cleaner. Users of the class do not need to know about the initialization details.
  ##  Moreover, the "initialize" method ensures that objects are always created with a valid state. By requiring certain parameters, you can prevent the creation of incomplete or invalid objects.
  def initialize(name)
    # The @ symbol indicates that "name" is an instance variable. Instance variables are variables that belong to an instance of a class. Each instance of the class has its own copy of instance variables.

    # "@name" will hold the value of the "name" parameter for the instance of the class.
    # The "= name" section assigns the value of the local variable (the parameter passed to initialize) to the instance variable "@name".
    @name = name
  end

  # Defining an instance method named "hello" in the HelloWorld class. This method takes an optional parameter with a default value of "nil". It uses the instance variable "@name", which should be set when an instance of the class is created. This allows the "hello" method to be called with or without an argument, making it flexible. The method returns a personalized greeting if a name is provided, and a default greeting otherwise.
  def hello(name = nil)
    if name
      "Hello, #{name}. My name is #{@name}!"
    else
      "Hello, World. My name is #{@name}!"
    end
  end
end


=begin

HelloWorld.new("Wally"):
    The "new" method is called on the HelloWorld class. This method is responsible for creating a new instance of the HelloWorld class.
    The "new" method automatically triggers the "initialize" method within the class, passing the argument "Wally" to it.

def initialize(name):
    Inside the "initialize" method, the parameter "name" receives the value "Wally".

@name = name:
    The instance variable "@name" is assigned the value "Wally".
    This means that any instance of HelloWorld created with the name "Wally" will have "@name" set to "Wally".

Result:
    The "new" method returns a new instance of the HelloWorld class with "@name" set to "Wally", and this instance is assigned to the variable "wally".

=end
wally = HelloWorld.new("Wally")       # Returns/Creating a new instance of the HelloWorld class with "@name" set to "Wally"
puts wally.hello                      # Output: 'Hello, World. My name is Wally!'

daisy = HelloWorld.new("Daisy")       # Returns a new instance of the HelloWorld class with "@name" set to "Daisy"
puts daisy.hello                      # Output: 'Hello, World. My name is Daisy!'


=begin

Purpose: This line calls the "hello" method on the "wally" object with the argument "Alice" and prints the result to the console.

How it works:
    "wally.hello("Alice")" calls the "hello" method on the "wally" instance of the HelloWorld class.

    Inside the "hello" method, the parameter "name" is set to "Alice" because "Alice" is passed as an argument.

    The "#{name}" part is replaced with the value "Alice", and the "#{@name}" part is replaced with the instance variable "@name", which is "Wally".

=end
puts wally.hello("Alice")             # Output: 'Hello, Alice. My name is Wally!'
puts wally.hello("Bob")               # Output: 'Hello, Bob. My name is Wally!'

puts daisy.hello("Bob")               # Output: 'Hello, Bob. My name is Daisy!'
