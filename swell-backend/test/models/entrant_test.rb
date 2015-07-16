require 'test_helper'

class EntrantTest < ActiveSupport::TestCase
  def setup
    @entrant = entrants(:one)
  end

  test "the fixture is valid" do
    assert @entrant.valid?
  end

  test "is invalid without competition_id" do
    @entrant.competition_id = nil
    refute @entrant.valid?
    assert @entrant.errors.keys.include?(:competition_id)
  end

  test "is invalid without surfer_id" do
    @entrant.surfer_id = nil
    refute @entrant.valid?
    assert @entrant.errors.keys.include?(:surfer_id)
  end
end
