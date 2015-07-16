require 'test_helper'

class SurferTest < ActiveSupport::TestCase
  def setup
    @surfer = surfers(:one)
  end

  test "the fixture is valid" do
    assert @surfer.valid?
  end

  test "is invalid without name" do
    @surfer.name = nil
    refute @surfer.valid?
    assert @surfer.errors.keys.include?(:name)
  end
end
