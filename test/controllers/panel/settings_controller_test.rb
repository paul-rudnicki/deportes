require 'test_helper'

class Panel::SettingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get panel_settings_new_url
    assert_response :success
  end

  test "should get create" do
    get panel_settings_create_url
    assert_response :success
  end

  test "should get edit" do
    get panel_settings_edit_url
    assert_response :success
  end

  test "should get update" do
    get panel_settings_update_url
    assert_response :success
  end

end
