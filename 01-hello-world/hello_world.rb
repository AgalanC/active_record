class HelloWorld
  def self.hello(name = nil)
    if name
      "Hello, #{name}!"
    else
      "Hello, World!"
    end
  end

  def self.hello()
end

# puts HelloWorld.hello
