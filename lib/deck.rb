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
    (@cards.length - 1).times do |index|
      if @cards[index].total_value > @cards[index + 1].total_value
        @cards[index], @cards[index + 1] = @cards[index + 1], @cards[index]
      end
    end
    @cards
  end

  def merge_sort
  end

end
