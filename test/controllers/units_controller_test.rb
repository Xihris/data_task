require 'test_helper'

class UnitsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get units_create_url
    assert_response :success
  end

  test "should get show" do
    get units_show_url
    assert_response :success
  end

  test "should get index" do
    get units_index_url
    assert_response :success
  end

  test "should get update" do
    get units_update_url
    assert_response :success
  end

end
