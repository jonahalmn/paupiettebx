require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get dashboard" do
    get pages_dashboard_url
    assert_response :success
  end

  test "should get sign_up_senior" do
    get pages_sign_up_senior_url
    assert_response :success
  end

  test "should get sign_up_student" do
    get pages_sign_up_student_url
    assert_response :success
  end

end
