module VikingRoom7
  class Player
    attr_accessor :hand, :name

    def initialize(name)
      @name = name
      @hand = "r"
    end

    def throw
    end

  end
end