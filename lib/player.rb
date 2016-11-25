class Player
  MAX_POINTS = 50
  ATTACK_POINTS = 10
  attr_reader :name, :hit_points

  def initialize(user_name)
    @name = user_name
    @hit_points = MAX_POINTS
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hit_points -= ATTACK_POINTS
  end

end
