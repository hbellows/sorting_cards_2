require 'minitest/autorun'
require 'minitest/pride'
require './lib/round'
require './lib/deck'
require './lib/card'
require './lib/guess'

class RoundTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_instance_of Round, round
  end

  def test_a_round_has_a_deck
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal deck, round.deck
  end

  def test_a_round_starts_with_no_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal [], round.guesses
  end

  def test_a_round_can_have_a_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal card_1, round.current_card
  end

  def test_a_round_can_store_a_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess = round.record_guess({value: "3", suit: "Hearts"})

    assert_equal '3 of Hearts', guess.response
    assert_equal card_1, guess.card

    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess = round.record_guess({value: "Jack", suit: "Diamonds"})

    assert_equal "Jack of Diamonds", guess.response
  end

  def test_it_can_count_the_number_of_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess = round.record_guess({value: "3", suit: "Hearts"})

    assert_equal 1, round.guesses.count

    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess_1 = round.record_guess({value: "3", suit: "Hearts"})
    guess_2 = round.record_guess({value: "Jack", suit: "Diamonds"})

    assert_equal 2, round.guesses.count
  end

  def test_the_round_can_provide_feedback
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess = round.record_guess({value: "3", suit: "Hearts"})

    assert_equal 'Correct!', round.guesses.first.feedback

    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess = round.record_guess({value: "Jack", suit: "Diamonds"})

    assert_equal 'Incorrect!', round.guesses.first.feedback
  end

  def test_it_can_track_correct_guesses
    # skip
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess_1 = round.record_guess({value: "3", suit: "Hearts"})
    guess_2 = round.record_guess({value: "Jack", suit: "Diamonds"})

    assert_equal 1, round.number_correct
  end

  def test_it_can_calculate_percentage_of_correct_guesses
    # skip
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess_1 = round.record_guess({value: "3", suit: "Hearts"})
    guess_2 = round.record_guess({value: "Jack", suit: "Diamonds"})

    assert_equal 50, round.percent_correct
  end
end
