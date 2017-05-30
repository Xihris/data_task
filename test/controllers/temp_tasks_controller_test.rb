require 'test_helper'

class TempTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get temp_tasks_new_url
    assert_response :success
  end

  test "should get create" do
    get temp_tasks_create_url
    assert_response :success
  end

end
