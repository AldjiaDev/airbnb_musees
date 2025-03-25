require "test_helper"

class MuseumsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get museums_index_url
    assert_response :success
  end

  test "should get show" do
    get museums_show_url
    assert_response :success
  end

  test "should get new" do
    get museums_new_url
    assert_response :success
  end

  test "should get create" do
    get museums_create_url
    assert_response :success
  end

  test "should get edit" do
    get museums_edit_url
    assert_response :success
  end

  test "should get update" do
    get museums_update_url
    assert_response :success
  end

  test "should get destroy" do
    get museums_destroy_url
    assert_response :success
  end
end
