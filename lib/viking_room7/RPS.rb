class RPS
  def initialize
    @player1 = Human.new
    num = ask_player_num
    if num == 1
      @player2 = Computer.new
    else
      @player2 = Human.new
    end
    play
  end

  def play
    until win?
      who_won
    end
  end

  def compare
    @player1.get_hand
    @player2.get_hand
    [@hand1, @hand2]
  end

  def who_won
    moves = compare
    players = [@player.name, @player2.name]
    if moves.include?("r") && moves.include?("p")
      i = moves.index("p")
      return players[i]
    elsif moves.include?("r") && moves.include?("s")
      i = moves.index("r")
      return players[i]
    elsif moves.include?("s") && moves.include?("p")
      i = moves.index("s")
      return players[i]
    end
  end

  def win?
    if @player1.hand != @player2.hand
      puts who_won
      return true
    else
      return false
    end
  end


  def ask_player_num
    puts "how many players?"
    num = gets.chomp
  end
end

rps = RPS.new
rps.play
