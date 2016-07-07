
module VikingRoom7
  class Human < Player

    def get_hand
      puts "What do you want to play?(Use 'R' for Rock, 'P' for Paper, and 'S' for Scissors"
      hand = gets.chomp.downcase
      @hand = hand
    end
  end
end