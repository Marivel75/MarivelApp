require 'test_helper'

class JoinRegionToPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join_region_to_place = join_region_to_places(:one)
  end

  test "should get index" do
    get join_region_to_places_url
    assert_response :success
  end

  test "should get new" do
    get new_join_region_to_place_url
    assert_response :success
  end

  test "should create join_region_to_place" do
    assert_difference('JoinRegionToPlace.count') do
      post join_region_to_places_url, params: { join_region_to_place: {  } }
    end

    assert_redirected_to join_region_to_place_url(JoinRegionToPlace.last)
  end

  test "should show join_region_to_place" do
    get join_region_to_place_url(@join_region_to_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_join_region_to_place_url(@join_region_to_place)
    assert_response :success
  end

  test "should update join_region_to_place" do
    patch join_region_to_place_url(@join_region_to_place), params: { join_region_to_place: {  } }
    assert_redirected_to join_region_to_place_url(@join_region_to_place)
  end

  test "should destroy join_region_to_place" do
    assert_difference('JoinRegionToPlace.count', -1) do
      delete join_region_to_place_url(@join_region_to_place)
    end

    assert_redirected_to join_region_to_places_url
  end
end
