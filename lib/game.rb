class Game

	attr_reader :player1, :player2
  attr_accessor :active_player

	def initialize(player1, player2)
		@player1 = player1
		@player2 = player2
    @active_player = self.player1
	end

	def attack(player)
		player.reduce_hp
    switch
	end

  private

  def switch
    if self.active_player == player1
      self.active_player = player2
    else
      self.active_player = player1
    end
  end

end
