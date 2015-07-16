require 'test_helper'

class Api::SurfersControllerTest < ActionController::TestCase
  def setup
    @surfers = Surfer.all
  end

  test 'GET #index' do
    get :index

    returned = JSON.parse(response.body, symbolize_names: true)

    @surfers.each do |surfer|
      returned_surfer = returned.select { |s| s[:id] == surfer.id }.first
      [:id, :name, :age, :picture, :hometown].each do |attr|
        assert_equal surfer.send(attr), returned_surfer[attr]
      end
    end

    assert_response 200
  end
end
