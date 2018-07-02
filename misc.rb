ITERATION 3:
FIRST SORT METHOD: BUBBLE SORT or INSERTION SORT
card_1 = Card.new("4","Hearts")
card_2 = Card.new("3", "Clubs")
card_3 = Card.new("5", "Diamonds")
deck = Deck.new([card_1, card_2, card_3])

deck.sort
=> [card_2, card_1, card_3]
#Bubble sort example
# def bubble_sort(array)
#   return array if array.size <= 1
#   swap = true
#     while swap
#       swap = false
#       (array.length - 1).times do |x|
#         if array[x] > array[x+1]
#           array[x], array[x+1] = array[x+1], array[x]
#           swap = true
#         end
#       end
#     end
#   array
# end


ITERATION 4:
SECOND SORT METHOD: MERGE SORT
card_1 = Card.new("4","Hearts")
card_2 = Card.new("3", "Clubs")
card_3 = Card.new("5", "Diamonds")
deck = Deck.new([card_1, card_2, card_3])

deck.merge_sort
=> [card_2, card_1, card_3]

EXTENSIONS:
* Prevent duplicate cards from being added to a deck.
* Put incorretly guessed cards back into the iteration to be asked again
  until the user guesses correctly.
* A deck can have up to two jokers.

deck = {}
