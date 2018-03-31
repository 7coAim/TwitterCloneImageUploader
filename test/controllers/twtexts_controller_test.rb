require 'test_helper'

class TwtextsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twtexts_index_url
    assert_response :success
  end

end
