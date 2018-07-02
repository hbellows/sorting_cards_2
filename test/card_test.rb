require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test

  def test_it_exists
    card = Card.new('10', 'Hearts')

    assert_instance_of Card, card
  end

  def test_it_has_attributes
    card = Card.new('Ace', 'Spades')

    assert_equal 'Ace', card.value
    assert_equal 'Spades', card.suit
  end

  def test_it_has_a_total_value
    card = Card.new("Ace", "Spades")

    assert_equal 15, card.total_value
  end
end
