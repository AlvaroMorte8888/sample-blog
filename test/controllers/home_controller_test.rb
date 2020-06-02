require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get contacst" do
    get home_contacst_url
    assert_response :success
  end

end
