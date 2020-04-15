require 'test_helper'

class TripWaypointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip_waypoint = trip_waypoints(:one)
  end

  test "should get index" do
    get trip_waypoints_url
    assert_response :success
  end

  test "should get new" do
    get new_trip_waypoint_url
    assert_response :success
  end

  test "should create trip_waypoint" do
    assert_difference('TripWaypoint.count') do
      post trip_waypoints_url, params: { trip_waypoint: { place_id: @trip_waypoint.place_id, trip_id: @trip_waypoint.trip_id } }
    end

    assert_redirected_to trip_waypoint_url(TripWaypoint.last)
  end

  test "should show trip_waypoint" do
    get trip_waypoint_url(@trip_waypoint)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_waypoint_url(@trip_waypoint)
    assert_response :success
  end

  test "should update trip_waypoint" do
    patch trip_waypoint_url(@trip_waypoint), params: { trip_waypoint: { place_id: @trip_waypoint.place_id, trip_id: @trip_waypoint.trip_id } }
    assert_redirected_to trip_waypoint_url(@trip_waypoint)
  end

  test "should destroy trip_waypoint" do
    assert_difference('TripWaypoint.count', -1) do
      delete trip_waypoint_url(@trip_waypoint)
    end

    assert_redirected_to trip_waypoints_url
  end
end
