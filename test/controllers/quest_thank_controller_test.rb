require 'test_helper'

class QuestThankControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quest_thank_index_url
    assert_response :success
  end

end
