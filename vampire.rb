class Vampire
  @@coven = []

  def initialize(name, age)
    @name = name
    @age = age
    @in_coffin = false
    @drank_blood_today = false
    @@coven << @self
  end

  def drink_blood
    @drank_blood_today = true
  end

  def go_home
    @in_coffin = true
  end

  def self.sunset
    @@coven.each do
      @drank_blood_today = false
      @in_coffin = false
    end
  end

  def self.sunrise
    @@coven.each do
      if @in_coffin == false && @drank_blood_today == false
        @@coven.delete(self)
      end
    end
  end

  def self.coven
    @@coven
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

puts Vampire.coven.inspect

puts vampire1.go_home
puts vampire2.drink_blood

puts vampire1.inspect
puts vampire2.inspect
puts vampire3.inspect
puts vampire4.inspect

puts Vampire.sunset.inspect
