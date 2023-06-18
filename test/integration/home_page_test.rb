require "test_helper"

class HomePageTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @user = User.create(
      firstName: "John",
      lastName: "Doe",
      fatherName: "Doo",
      email: "alexBodnar@gmail.com",
      password: "password",
      password_confirmation: "password",
      NickName: "AlexBodnaruck",
      birthday: Date.new(1990, 1, 1)
    )

    @category = Category.create(categoryName: 'Example Category')

    sign_in @user
  end

  test "visiting the home page" do
    get "/"
    assert_response :success
    assert_select "h1", "Blogger.gg - The best place for your blog"
  end

  test "visiting the categories page" do
    get "/categories/"
    assert_response :success
    assert_select "h1", "Categories"
  end

  test "can create a new category" do
    get "/categories/new"
    assert_response :success

    post "/categories",
      params: {
        category: {
          categoryName: "New category"
        }
      }

    assert_response :redirect
    follow_redirect!
    assert_response :success
  end
end