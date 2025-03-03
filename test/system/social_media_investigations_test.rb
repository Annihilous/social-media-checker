require "application_system_test_case"

class SocialMediaInvestigationsTest < ApplicationSystemTestCase
  setup do
    @social_media_investigation = social_media_investigations(:one)
  end

  test "visiting the index" do
    visit social_media_investigations_url
    assert_selector "h1", text: "Social media investigations"
  end

  test "should create social media investigation" do
    visit social_media_investigations_url
    click_on "New social media investigation"

    fill_in "Api payload", with: @social_media_investigation.api_payload
    fill_in "Ended at", with: @social_media_investigation.ended_at
    fill_in "Platform", with: @social_media_investigation.platform
    fill_in "Platform account key", with: @social_media_investigation.platform_account_key
    fill_in "Started at", with: @social_media_investigation.started_at
    click_on "Create Social media investigation"

    assert_text "Social media investigation was successfully created"
    click_on "Back"
  end

  test "should update Social media investigation" do
    visit social_media_investigation_url(@social_media_investigation)
    click_on "Edit this social media investigation", match: :first

    fill_in "Api payload", with: @social_media_investigation.api_payload
    fill_in "Ended at", with: @social_media_investigation.ended_at.to_s
    fill_in "Platform", with: @social_media_investigation.platform
    fill_in "Platform account key", with: @social_media_investigation.platform_account_key
    fill_in "Started at", with: @social_media_investigation.started_at.to_s
    click_on "Update Social media investigation"

    assert_text "Social media investigation was successfully updated"
    click_on "Back"
  end

  test "should destroy Social media investigation" do
    visit social_media_investigation_url(@social_media_investigation)
    click_on "Destroy this social media investigation", match: :first

    assert_text "Social media investigation was successfully destroyed"
  end
end
