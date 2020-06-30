require 'test_helper'

class SpecificContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @specific_content = specific_contents(:one)
  end

  test "should get index" do
    get specific_contents_url
    assert_response :success
  end

  test "should get new" do
    get new_specific_content_url
    assert_response :success
  end

  test "should create specific_content" do
    assert_difference('SpecificContent.count') do
      post specific_contents_url, params: { specific_content: { content: @specific_content.content, external_link: @specific_content.external_link, subtitle: @specific_content.subtitle, title: @specific_content.title } }
    end

    assert_redirected_to specific_content_url(SpecificContent.last)
  end

  test "should show specific_content" do
    get specific_content_url(@specific_content)
    assert_response :success
  end

  test "should get edit" do
    get edit_specific_content_url(@specific_content)
    assert_response :success
  end

  test "should update specific_content" do
    patch specific_content_url(@specific_content), params: { specific_content: { content: @specific_content.content, external_link: @specific_content.external_link, subtitle: @specific_content.subtitle, title: @specific_content.title } }
    assert_redirected_to specific_content_url(@specific_content)
  end

  test "should destroy specific_content" do
    assert_difference('SpecificContent.count', -1) do
      delete specific_content_url(@specific_content)
    end

    assert_redirected_to specific_contents_url
  end
end
