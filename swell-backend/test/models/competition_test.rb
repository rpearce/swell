require 'test_helper'

class CompetitionTest < ActiveSupport::TestCase
  def setup
    @competition = competitions(:one)
  end

  test "the fixture is valid" do
    assert @competition.valid?
  end

  test "is invalid without name" do
    @competition.name = nil
    refute @competition.valid?
    assert @competition.errors.keys.include?(:name)
  end

  test "is invalid without location" do
    @competition.location = nil
    refute @competition.valid?
    assert @competition.errors.keys.include?(:location)
  end

  test "is invalid without occurs_on" do
    @competition.occurs_on = nil
    refute @competition.valid?
    assert @competition.errors.keys.include?(:occurs_on)
  end
end
