module VikingRoom7
  class Computer < Player

    def initialize
      super("computer")
    end

    def get_hand
      hand = ["r", 'p', 's'].sample
      @hand = hand
    end

  end
end