class Vampire
  @name
  @age
  @@in_coffin = true
  @@drank_blood_today = true

  def drink_blood
    @@drank_blood_today = true
  end

  def go_home
    @@in_coffin = true
  end


end
