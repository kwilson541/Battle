class Game

	attr_reader :player1, :player2
	attr_accessor :active_player, :inactive_player, :dead_player

	def initialize(player1, player2)
		@player1 = player1
		@player2 = player2
    @dead_player = nil
    	@active_player = self.player1
    	@inactive_player = self.player2
	end

	def attack(player)
		player.reduce_hp
    check_if_dead
    switch
	end


  private

  def check_if_dead
    self.dead_player = self.player1 if self.player1.hp == 0
    self.dead_player = self.player2 if self.player2.hp == 0
  end

	def switch
		if self.active_player == player1
			self.active_player = player2
			self.inactive_player = player1
		else
			self.active_player = player1
			self.inactive_player = player2
		end
	end

end
