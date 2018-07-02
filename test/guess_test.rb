require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'

class GuessTest < Minitest::Test

  def test_it_exists
    card = Card.new('10', 'Hearts')
    guess = Guess.new('10 of Hearts', card)

    assert_instance_of Guess, guess
  end

  def test_it_has_a_card
    card = Card.new('10', 'Hearts')
    guess = Guess.new('10 of Hearts', card)

    assert_equal card, guess.card

    card = Card.new('Queen', 'Clubs')
    guess = Guess.new('2 of Diamonds', card)

    assert_equal card, guess.card
  end

  def test_it_can_detect_a_response
    card = Card.new('10', 'Hearts')
    guess = Guess.new('10 of Hearts', card)

    assert_equal '10 of Hearts', guess.response

    card = Card.new('Queen', 'Clubs')
    guess = Guess.new('2 of Diamonds', card)

    assert_equal '2 of Diamonds', guess.response
  end

  def test_it_can_evaluate_a_response
    card = Card.new('10', 'Hearts')
    guess = Guess.new('10 of Hearts', card)

    assert_equal true, guess.correct?

    card = Card.new('Queen', 'Clubs')
    guess = Guess.new('2 of Diamonds', card)

    assert_equal false, guess.correct?
  end

  def test_it_can_give_feedback_to_a_response
    card = Card.new('10', 'Hearts')
    guess = Guess.new('10 of Hearts', card)

    assert_equal 'Correct!', guess.feedback

    card = Card.new('Queen', 'Clubs')
    guess = Guess.new('2 of Diamonds', card)

    assert_equal 'Incorrect!', guess.feedback
  end
end
