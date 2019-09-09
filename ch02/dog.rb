class Dog
  attr_reader :name, :age

  def name=(value)
    raise 'Name can\'t be blank!' if value == ''
    @name = value
  end

  def age=(value)
    raise "An age of #{value} isn't valid!" if value < 0
    @age = value
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def talk
    puts "#{@name} says 'bark'!"
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end
end

dog = Dog.new
dog.name = 'Daisy'
dog.age = 3
dog.report_age
dog.talk
dog.move('bed')
