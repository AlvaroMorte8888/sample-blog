require 'test_helper'

class DateControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get date_contact_url
    assert_response :success
  end

end
