require "test_helper"

class SocialMediaInvestigationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_media_investigation = social_media_investigations(:one)
  end

  test "should get index" do
    get social_media_investigations_url
    assert_response :success
  end

  test "should get new" do
    get new_social_media_investigation_url
    assert_response :success
  end

  test "should create social_media_investigation" do
    assert_difference("SocialMediaInvestigation.count") do
      post social_media_investigations_url, params: { social_media_investigation: { api_payload: @social_media_investigation.api_payload, ended_at: @social_media_investigation.ended_at, platform: @social_media_investigation.platform, platform_account_key: @social_media_investigation.platform_account_key, started_at: @social_media_investigation.started_at } }
    end

    assert_redirected_to social_media_investigation_url(SocialMediaInvestigation.last)
  end

  test "should show social_media_investigation" do
    get social_media_investigation_url(@social_media_investigation)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_media_investigation_url(@social_media_investigation)
    assert_response :success
  end

  test "should update social_media_investigation" do
    patch social_media_investigation_url(@social_media_investigation), params: { social_media_investigation: { api_payload: @social_media_investigation.api_payload, ended_at: @social_media_investigation.ended_at, platform: @social_media_investigation.platform, platform_account_key: @social_media_investigation.platform_account_key, started_at: @social_media_investigation.started_at } }
    assert_redirected_to social_media_investigation_url(@social_media_investigation)
  end

  test "should destroy social_media_investigation" do
    assert_difference("SocialMediaInvestigation.count", -1) do
      delete social_media_investigation_url(@social_media_investigation)
    end

    assert_redirected_to social_media_investigations_url
  end
end
