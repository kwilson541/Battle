class Player

    attr_reader :name
    attr_accessor :hp

    DEFAULT_HP = 20
    DEFAULT_DAMAGE = 10

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def reduce_hp
    self.hp -= DEFAULT_DAMAGE
  end

end
