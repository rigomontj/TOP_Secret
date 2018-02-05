require 'test_helper'

class SecretPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get secret_pages_show_url
    assert_response :success
  end

end
