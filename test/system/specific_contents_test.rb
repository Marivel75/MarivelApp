require "application_system_test_case"

class SpecificContentsTest < ApplicationSystemTestCase
  setup do
    @specific_content = specific_contents(:one)
  end

  test "visiting the index" do
    visit specific_contents_url
    assert_selector "h1", text: "Specific Contents"
  end

  test "creating a Specific content" do
    visit specific_contents_url
    click_on "New Specific Content"

    fill_in "Content", with: @specific_content.content
    fill_in "External link", with: @specific_content.external_link
    fill_in "Subtitle", with: @specific_content.subtitle
    fill_in "Title", with: @specific_content.title
    click_on "Create Specific content"

    assert_text "Specific content was successfully created"
    click_on "Back"
  end

  test "updating a Specific content" do
    visit specific_contents_url
    click_on "Edit", match: :first

    fill_in "Content", with: @specific_content.content
    fill_in "External link", with: @specific_content.external_link
    fill_in "Subtitle", with: @specific_content.subtitle
    fill_in "Title", with: @specific_content.title
    click_on "Update Specific content"

    assert_text "Specific content was successfully updated"
    click_on "Back"
  end

  test "destroying a Specific content" do
    visit specific_contents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Specific content was successfully destroyed"
  end
end
