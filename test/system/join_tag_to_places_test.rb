require "application_system_test_case"

class JoinTagToPlacesTest < ApplicationSystemTestCase
  setup do
    @join_tag_to_place = join_tag_to_places(:one)
  end

  test "visiting the index" do
    visit join_tag_to_places_url
    assert_selector "h1", text: "Join Tag To Places"
  end

  test "creating a Join tag to place" do
    visit join_tag_to_places_url
    click_on "New Join Tag To Place"

    click_on "Create Join tag to place"

    assert_text "Join tag to place was successfully created"
    click_on "Back"
  end

  test "updating a Join tag to place" do
    visit join_tag_to_places_url
    click_on "Edit", match: :first

    click_on "Update Join tag to place"

    assert_text "Join tag to place was successfully updated"
    click_on "Back"
  end

  test "destroying a Join tag to place" do
    visit join_tag_to_places_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Join tag to place was successfully destroyed"
  end
end
