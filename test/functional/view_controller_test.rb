require 'test_helper'

class ViewControllerTest < ActionController::TestCase
  test "should get photostream" do
    get :photostream
    assert_response :success
  end

end
