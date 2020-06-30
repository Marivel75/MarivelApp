require "application_system_test_case"

class JoinSpecificContentToPlacesTest < ApplicationSystemTestCase
  setup do
    @join_specific_content_to_place = join_specific_content_to_places(:one)
  end

  test "visiting the index" do
    visit join_specific_content_to_places_url
    assert_selector "h1", text: "Join Specific Content To Places"
  end

  test "creating a Join specific content to place" do
    visit join_specific_content_to_places_url
    click_on "New Join Specific Content To Place"

    click_on "Create Join specific content to place"

    assert_text "Join specific content to place was successfully created"
    click_on "Back"
  end

  test "updating a Join specific content to place" do
    visit join_specific_content_to_places_url
    click_on "Edit", match: :first

    click_on "Update Join specific content to place"

    assert_text "Join specific content to place was successfully updated"
    click_on "Back"
  end

  test "destroying a Join specific content to place" do
    visit join_specific_content_to_places_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Join specific content to place was successfully destroyed"
  end
end
