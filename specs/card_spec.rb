require('minitest/autorun')
require('minitest/rg')
require_relative('../card')

class CardTest < MiniTest::Test

  def setup()
    @card = Card.new("Clubs", 10)
  end

  def test_card_has_suit
    assert_equal("Clubs", @card.suit)
  end

  def test_card_has_value
    assert_equal(10, @card.value)
  end
  
end
