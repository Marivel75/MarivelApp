require "application_system_test_case"

class JoinRegionToPlacesTest < ApplicationSystemTestCase
  setup do
    @join_region_to_place = join_region_to_places(:one)
  end

  test "visiting the index" do
    visit join_region_to_places_url
    assert_selector "h1", text: "Join Region To Places"
  end

  test "creating a Join region to place" do
    visit join_region_to_places_url
    click_on "New Join Region To Place"

    click_on "Create Join region to place"

    assert_text "Join region to place was successfully created"
    click_on "Back"
  end

  test "updating a Join region to place" do
    visit join_region_to_places_url
    click_on "Edit", match: :first

    click_on "Update Join region to place"

    assert_text "Join region to place was successfully updated"
    click_on "Back"
  end

  test "destroying a Join region to place" do
    visit join_region_to_places_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Join region to place was successfully destroyed"
  end
end
