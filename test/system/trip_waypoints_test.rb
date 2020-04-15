require "application_system_test_case"

class TripWaypointsTest < ApplicationSystemTestCase
  setup do
    @trip_waypoint = trip_waypoints(:one)
  end

  test "visiting the index" do
    visit trip_waypoints_url
    assert_selector "h1", text: "Trip Waypoints"
  end

  test "creating a Trip waypoint" do
    visit trip_waypoints_url
    click_on "New Trip Waypoint"

    fill_in "Place", with: @trip_waypoint.place_id
    fill_in "Trip", with: @trip_waypoint.trip_id
    click_on "Create Trip waypoint"

    assert_text "Trip waypoint was successfully created"
    click_on "Back"
  end

  test "updating a Trip waypoint" do
    visit trip_waypoints_url
    click_on "Edit", match: :first

    fill_in "Place", with: @trip_waypoint.place_id
    fill_in "Trip", with: @trip_waypoint.trip_id
    click_on "Update Trip waypoint"

    assert_text "Trip waypoint was successfully updated"
    click_on "Back"
  end

  test "destroying a Trip waypoint" do
    visit trip_waypoints_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trip waypoint was successfully destroyed"
  end
end
