module VikingRoom7
  class Computer < Player

    def initialize
      @name = "computer"
    end

    def get_hand
      hand = %w{r,p,s}.sample
      @hand = hand
    end

  end
end