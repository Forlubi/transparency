require 'test_helper'

class AdministratorPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get administrator_pages_home_url
    assert_response :success
  end

  test "should get help" do
    get administrator_pages_help_url
    assert_response :success
  end

end
