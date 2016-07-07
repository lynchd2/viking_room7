module VikingRoom7
  class RPS
    def initialize
      @player1 = Human.new(get_name)
      num = ask_player_num
      if num == 1
        @player2 = Computer.new
      elsif num == 2
        @player2 = Human.new(get_name)
      else
        puts "pick 1 or 2"
      end
      play
    end

    def get_name
      puts "What is your name?"
      gets.chomp
    end

    def play
      loop do
        compare
        who_won
        break if win?
      end
      display_winner
    end

    def compare
      @player1.get_hand
      @player2.get_hand
    end

    def who_won
      moves = [@player1.hand, @player2.hand]
      players = [@player1.name, @player2.name]
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

    def display_winner
      puts "#{who_won} wins!"
    end

    def win?
      @player1.hand != @player2.hand
    end


    def ask_player_num
      puts "how many players?"
      num = gets.chomp.to_i
    end
  end
end
