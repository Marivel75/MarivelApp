require 'test_helper'

class JoinSpecificContentToPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join_specific_content_to_place = join_specific_content_to_places(:one)
  end

  test "should get index" do
    get join_specific_content_to_places_url
    assert_response :success
  end

  test "should get new" do
    get new_join_specific_content_to_place_url
    assert_response :success
  end

  test "should create join_specific_content_to_place" do
    assert_difference('JoinSpecificContentToPlace.count') do
      post join_specific_content_to_places_url, params: { join_specific_content_to_place: {  } }
    end

    assert_redirected_to join_specific_content_to_place_url(JoinSpecificContentToPlace.last)
  end

  test "should show join_specific_content_to_place" do
    get join_specific_content_to_place_url(@join_specific_content_to_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_join_specific_content_to_place_url(@join_specific_content_to_place)
    assert_response :success
  end

  test "should update join_specific_content_to_place" do
    patch join_specific_content_to_place_url(@join_specific_content_to_place), params: { join_specific_content_to_place: {  } }
    assert_redirected_to join_specific_content_to_place_url(@join_specific_content_to_place)
  end

  test "should destroy join_specific_content_to_place" do
    assert_difference('JoinSpecificContentToPlace.count', -1) do
      delete join_specific_content_to_place_url(@join_specific_content_to_place)
    end

    assert_redirected_to join_specific_content_to_places_url
  end
end
