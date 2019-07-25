require('minitest/autorun')
require('minitest/rg')
require_relative('../card_game')
require_relative('../card')

class CardGameTest < MiniTest::Test

  def setup()

    @card1 = Card.new("Spades", 1)
    @card2 = Card.new("Clubs", 4)

    @cards = [@card1, @card2]
    @card_game= CardGame.new("Poker")
  end

  def test_card_game_has_name()
    assert_equal("Poker", @card_game.name)
  end

  def test_check_for_ace()
    card = Card.new("Clubs", 1)

    assert_equal(true, @card_game.check_for_ace(card))
  end
  def test_highest_card()
    result = @card_game.highest_card(@card2, @card1)
    assert_equal(@card2, result)
  end

  def test_self_cards_total()

    assert_equal("You have a total of 5", @card_game.self_cards_total(@cards))
  end
end
