require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: {
          user: { name: "",
          email: "hayato0322ash@yahoo",
          password: "000",
          password_confirmation: "000"}
        }
      assert_response :unprocessable_entity
      assert_template 'users/new'
    end
  end

  test "valid signup information" do
    assert_difference 'User.count', 1 do
      post users_path, params: {
        user: {
          name: "これはテスト太郎",
          email: "test@example.com",
          password: "00000000",
          password_confirmation: "00000000"
        }
      }
    end
    follow_redirect!
    assert_template 'users/show'
    assert is_logged_in?
  end

end
