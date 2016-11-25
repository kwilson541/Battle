class Player
  $MAX_POINTS = 50
  $ATTACK_POINTS = 10
  attr_reader :name

  def initialize(user_name)
    @name = user_name
    @hit_ponts = $MAX_POINTS
  end

  def attack
    return @hit_ponts -= $ATTACK_POINTS
  end

end
