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


# I understand the concept here, recursively splitting the array halves down and comparing, swapping, rebuilding, but I did get quite a bit of help setting up the algorithm.

#It only works if the Aces are split between the left and right array; if there is one Ace per array it works, if both are in either the left or right array, it doesn't work???
  def merge_sort
    if @cards.length <= 1
      @cards
    else
      mid = @cards.length / 2
      left = @cards[0..(mid - 1)]
      right = @cards[mid..@cards.length]
      merge(left, right)
    end
  end

  def merge(left, right)
    if left.empty?
      right
    elsif right.empty?
      left
    elsif left.first.total_value < right.first.total_value
      [left.first] + merge(left[1..left.length], right)
    else
      [right.first] + merge(left, right[1..right.length])
    end
  end


end
