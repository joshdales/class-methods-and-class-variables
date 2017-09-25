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
