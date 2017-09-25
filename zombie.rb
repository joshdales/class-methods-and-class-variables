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

  def outrun_zombie?
    if rand(@@max_speed) > @@horder[rand(@@horde)]
      true
    else
      false
    end
  end

  def self.all
    @@horde
  end

  def self.increase_plague_level
    @@plague_level += rand(2)
  end

  def self.spawn
    create = rand(@@plague_level)
    create.times do
      new_zombie = Zombie.new(rand(@@max_speed),  rand(@@max_strength))
        @@horde << new_zombie
    end
  end

  def self.some_die_off
    rand(10).times do
      @@horde.delete(@@horde.sample)
    end
  end

  def self.new_day
    Zombie.some_die_off
    Zombie.spawn
    Zombie.increase_plague_level
  end

end

Zombie.spawn
puts Zombie.all.inspect

Zombie.new_day
puts Zombie.all.inspect
