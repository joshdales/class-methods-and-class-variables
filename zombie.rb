class Zombie
  @@horde = []
  @@plague_level = 10
  @@max_speed = 5
  @@max_strength = 8
  @@default_speed = 1
  @@default_strength = 3

  def initialize(zombie_speed, zombie_strength)
    if zombie_speed > @@max_speed
      @zombie_speed = @@default_speed
    else
      @zombie_speed = zombie_speed
    end

    if zombie_strength > @@max_strength
      @zombie_strength = @@default_strength
    else
      @zombie_strength = zombie_strength
    end
  end

  def self.all
    @@horde
  end

  def self.spawn
    create = rand(@@plague_level)
    create.times do
      new_zombie = Zombie.new(rand(@@max_speed),  rand(@@max_strength))
        @@horde << new_zombie
    end
  end



end

zombie = Zombie.new(rand(10), rand(10))
puts zombie.inspect
Zombie.spawn
puts zombie.inspect
