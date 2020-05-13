require 'test_helper'

class JoinTagToPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join_tag_to_place = join_tag_to_places(:one)
  end

  test "should get index" do
    get join_tag_to_places_url
    assert_response :success
  end

  test "should get new" do
    get new_join_tag_to_place_url
    assert_response :success
  end

  test "should create join_tag_to_place" do
    assert_difference('JoinTagToPlace.count') do
      post join_tag_to_places_url, params: { join_tag_to_place: {  } }
    end

    assert_redirected_to join_tag_to_place_url(JoinTagToPlace.last)
  end

  test "should show join_tag_to_place" do
    get join_tag_to_place_url(@join_tag_to_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_join_tag_to_place_url(@join_tag_to_place)
    assert_response :success
  end

  test "should update join_tag_to_place" do
    patch join_tag_to_place_url(@join_tag_to_place), params: { join_tag_to_place: {  } }
    assert_redirected_to join_tag_to_place_url(@join_tag_to_place)
  end

  test "should destroy join_tag_to_place" do
    assert_difference('JoinTagToPlace.count', -1) do
      delete join_tag_to_place_url(@join_tag_to_place)
    end

    assert_redirected_to join_tag_to_places_url
  end
end
