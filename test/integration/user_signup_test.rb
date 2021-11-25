require "test_helper"

class UserSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup" do
    get signup_path
    assert_no_difference "User.count" do
      post users_path, params: { user: { name: "",  email: "", password: "", password_confirmation: "" } }
    end
    assert_template 'users/new'
    assert_select "div#error_explanation"
    assert_select "div.alert-danger"
  end
end
