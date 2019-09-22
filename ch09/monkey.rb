module Clumsy
  def break(thing)
    puts "Knocks over #{thing}"
  end
end

module Curious
  def investigate(thing)
    puts "Looks at #{thing}"
  end
end

class Monkey
  include Clumsy
  include Curious
end

bubbles = Monkey.new
bubbles.investigate('vase')
bubbles.break('vase')
