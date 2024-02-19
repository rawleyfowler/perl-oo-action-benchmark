class Action
  def initialize(age, name)
    @age = age
    @name = name
  end

  def execute
    { name: @name, age: @age }
  end
end

age = 12
name = 'Tim'
1000000.times do
  user = Action.new(age, name).execute()
end
