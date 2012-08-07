require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get create_contact" do
    get :create_contact
    assert_response :success
  end

  test "should get submit_contact" do
    get :submit_contact
    assert_response :success
  end

end
