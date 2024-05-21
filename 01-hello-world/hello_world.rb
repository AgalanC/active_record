# class HelloWorld
#   def self.initialize(name = nil)
#     @name = name
#   end

#   def self.hello
#     if name
#       "Hello, #{@name}!"
#     else
#       "Hello, World!"
#     end
#   end
# end


# puts HelloWorld.hello
# puts HelloWorld.hello("Alice")
# puts HelloWorld.hello("Bob")



class HelloWorld
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
