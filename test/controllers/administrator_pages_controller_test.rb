require 'test_helper'

class AdministratorPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get administrator_pages_home_url
    assert_response :success
    assert_select "title", "Transparency"
  end

  test "should get help" do
    get administrator_pages_help_url
    assert_response :success
    assert_select "title", "Help | Transparency"
  end

  test "should get about" do
    get administrator_pages_about_url
    assert_response :success
    assert_select "title", "About | Transparency"
  end

end
