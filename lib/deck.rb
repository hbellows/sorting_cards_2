require './lib/card'

class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
    @deck_map = {
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
      "Clubs" => 1,
      "Diamonds" => 2,
      "Hearts" => 3,
      "Spades" => 4
    }
  end

  def count
    @cards.count
  end
  
  def sort
  end

  def merge_sort
  end

  def find_card_values
    card_value = @cards.map do |card|
      @deck_map[card.value]
    end
    require "pry"; binding.pry
  end

  def find_card_suits
    card_suit = @cards.map do |card|
      @deck_map[card.suit]
    end
    require "pry"; binding.pry
  end
end

card_1 = Card.new("4","Hearts")
card_2 = Card.new("Jack", "Clubs")
card_3 = Card.new("5", "Diamonds")
card_4 = Card.new("Ace", "Spades")
card_5 = Card.new("Ace", "Diamonds")
deck = Deck.new([card_1, card_2, card_3, card_4, card_5])

p deck.find_card_values
p deck.find_card_suits
