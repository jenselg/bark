require 'test_helper'

class PrivatePagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get private_pages_index_url
    assert_response :success
  end

end
