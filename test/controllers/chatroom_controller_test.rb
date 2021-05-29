require 'test_helper'

class ChatroomControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get chatroom_create_url
    assert_response :success
  end

end
