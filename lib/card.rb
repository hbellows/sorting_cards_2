class Card
  attr_reader :value,
              :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
    @card_value_map = {
      "2" => 2,
      "3" => 3,
      "4" => 4,
      "5" => 5,
      "6" => 6,
      "7" => 7,
      "8" => 8,
      "9" => 9,
      "10" => 10,
      "Jack" => 11,
      "Queen" => 12,
      "King" => 13,
      "Ace" => 14,
      "Joker" => 15,
      "Clubs" => 0.25,
      "Diamonds" => 0.5,
      "Hearts" => 0.75,
      "Spades" => 1,
      "Red" => 1,
      "Black" => 2,
    }
  end

  def total_value
    @card_value_map[@suit] + @card_value_map[@value]
  end
end
