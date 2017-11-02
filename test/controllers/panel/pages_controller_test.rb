require 'test_helper'

class Panel::PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get panel_pages_index_url
    assert_response :success
  end

  test "should get new" do
    get panel_pages_new_url
    assert_response :success
  end

  test "should get create" do
    get panel_pages_create_url
    assert_response :success
  end

  test "should get edit" do
    get panel_pages_edit_url
    assert_response :success
  end

  test "should get update" do
    get panel_pages_update_url
    assert_response :success
  end

  test "should get destroy" do
    get panel_pages_destroy_url
    assert_response :success
  end

end
