require './lib/card'

class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count
  end

  def sort
    card_value = @cards.each do |card|
      require "pry"; binding.pry
      @deck_map[card.value].to_f + @deck_map[card.suit]
      end
        @cards.map.with_index do |card, index|
          if card_value[index + 0] > card_value[index + 1]
            @cards[index], @cards[index +1] = @cards[index + 1], @cards[index]
          # else
          #   @cards[index + 0] = @cards[index + 1]
      # require "pry"; binding.pry
        # if card_value > index_value
        end
      end
  end

  def merge_sort
  end

  # def find_card_values
  #   total_card_value = @cards.map do |card|
  #     @deck_map[card.value] + @deck_map[card.suit]
  #   end
  # end

end

# card_1 = Card.new("4","Hearts")
# card_2 = Card.new("Jack", "Clubs")
# card_3 = Card.new("5", "Diamonds")
# card_4 = Card.new("Ace", "Spades")
# card_5 = Card.new("Ace", "Diamonds")
# deck = Deck.new([card_1, card_2, card_3, card_4, card_5])
#
# # p deck.find_card_suits
# # p deck.find_card_values
#
# p deck.find_card_values
