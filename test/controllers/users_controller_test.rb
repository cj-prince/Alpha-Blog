require "test_helper"

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @controller.stubs(:current_user).returns(@user)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, params: { user: { email: @user.email, username: @user.username } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get :show, params: { id: @user.id }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @user.id }
    assert_response :success
  end

  test "should update user" do
    patch :update, params: { id: @user.id, user: { email: @user.email, username: @user.username } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, params: { id: @user.id }
    end

    assert_redirected_to users_url
  end
end
