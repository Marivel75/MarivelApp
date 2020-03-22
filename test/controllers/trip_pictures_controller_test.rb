require 'test_helper'

class TripPicturesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get trip_pictures_create_url
    assert_response :success
  end

end
