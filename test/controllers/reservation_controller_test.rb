require 'test_helper'

class ReservationControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get reservation_create_url
    assert_response :success
  end

end
