class Vampire
  @name
  @age
  @@in_coffin = false
  @@drank_blood_today = false
  @@coven = []

  def initialize(name, age)
    @name = name
    @age = age
    @@coven << @self
  end

  def self.drink_blood
    @@drank_blood_today = true
  end

  def self.go_home
    @@in_coffin = true
  end

  def self.sunset
    @@drank_blood_today = false
    @@in_coffin = false
  end

  def self.sunrise
    if @@in_coffin == false && @@drank_blood_today == false
      @@coven.delete(self)
    end
  end

end

vampire1 = Vampire.new("Viago", 379)
vampire2 = Vampire.new("Vladislav", 862)
vampire3 = Vampire.new("Deacon", 183)
vampire4 = Vampire.new("Petyr", 8000)

puts vampire1.inspect
puts vampire2.inspect
puts vampire3.inspect
puts vampire4.inspect

puts Vampire.go_home
puts Vampire.drink_blood

puts vampire1.inspect
puts vampire2.inspect
puts vampire3.inspect
puts vampire4.inspect

puts Vampire.sunset
