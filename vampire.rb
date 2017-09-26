class Vampire
  @@coven = []
  @@day = []

  def initialize(name, age)
    @name = name
    @age = age
    @in_coffin = false
    @drank_blood_today = false
    @@coven << self
  end

  def drink_blood
    @drank_blood_today = true
  end

  def need_blood
    @drank_blood_today = false
  end

  def drank_blood_today?
    @drank_blood_today
  end

  def go_home
    @in_coffin = true
  end

  def in_coffin?
    @in_coffin
  end

  def need_rest
    @in_coffin = false
  end

  def self.sunset
    @@coven.each do |vampire|
      vampire.need_blood
      vampire.need_rest
    end
  end

  def self.sunrise
    @@coven.each do |vampire|
      if vampire.in_coffin? == false && vampire.drank_blood_today? == false
        @@day << vampire
      end
    end
    @@day.each do |vampire|
      @@coven.delete(vampire)
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

puts vampire1.drink_blood
puts vampire2.drink_blood
puts vampire3.drink_blood
puts vampire4.drink_blood

puts Vampire.coven.inspect

puts vampire1.go_home
puts vampire2.go_home
puts vampire3.go_home
puts vampire4.go_home

puts Vampire.coven.inspect

puts Vampire.sunrise
puts Vampire.sunset

puts Vampire.coven.inspect

puts Vampire.sunrise
puts Vampire.coven.inspect
