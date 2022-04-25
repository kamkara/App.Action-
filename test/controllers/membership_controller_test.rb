require "test_helper"

class MembershipControllerTest < ActionDispatch::IntegrationTest
  test "should get adherant" do
    get membership_adherant_url
    assert_response :success
  end

  test "should get admin" do
    get membership_admin_url
    assert_response :success
  end

  test "should get espaceAdmin" do
    get membership_espaceAdmin_url
    assert_response :success
  end

  test "should get espaceMember" do
    get membership_espaceMember_url
    assert_response :success
  end
end
