
require 'pry'

class Greeting
  def self.hello
    'hello world!'
  end

  def self.eigenclass
    class << self
      self
    end
  end
end

#puts Greeting.singleton_class # = eigenclass
puts Greeting.eigenclass        # => #<Class:Greeting>
puts "name=" + Greeting.eigenclass.name.to_s # => nil
#puts Greeting.singleton_methods.join(', ')                  # => [:hello, :eigenclass]
#puts Greeting.eigenclass.instance_methods(false).join(', ') # => [:hello, :eigenclass]
puts "\n"

#puts Greeting.class
#puts "Greeting class ancestors: " + Greeting.ancestors.to_s
#puts "\n"

# singleton class of the instance
abc = Greeting.new
#puts abc.singleton_class.ancestors.to_s


