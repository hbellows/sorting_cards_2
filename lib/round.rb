class Round
  attr_reader :deck,
              :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    @deck.cards.first
  end

  def record_guess(response)
    response = "#{response[:value]} of #{response[:suit]}"
    guess = Guess.new(response, current_card)
    @guesses << guess
      if guess.correct?
        @deck.cards.rotate!
      end
    guess
  end

  def number_correct
    correct_guess = 0
    @guesses.map do |guess|
      if guess.correct?
        correct_guess += 1
      end
    end
    correct_guess
  end

  def percent_correct
    percentage = (number_correct.to_f / @guesses.count) * 100
    percentage.to_i
  end
end
