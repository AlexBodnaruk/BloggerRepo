require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(
      firstName: "John",
      lastName: "Doe",
      fatherName: "Smith",
      NickName: "johndoe",
      birthday: Date.new(1990, 1, 1)
    )
  end

  test "should be valid with all required attributes" do
    assert_not @user.valid?
  end

  test "should be invalid without a first name" do
    @user.firstName = nil
    assert_not @user.valid?
    assert_includes @user.errors.full_messages, "Firstname can't be blank"
  end

  test "should be invalid without a last name" do
    @user.lastName = nil
    assert_not @user.valid?
    assert_includes @user.errors.full_messages, "Lastname can't be blank"
  end

  test "should be invalid without a father's name" do
    @user.fatherName = nil
    assert_not @user.valid?
    assert_includes @user.errors.full_messages, "Fathername can't be blank"
  end

  test "should be invalid without a nickname" do
    @user.NickName = nil
    assert_not @user.valid?
    assert_includes @user.errors.full_messages, "Nickname can't be blank"
  end

  test "should be invalid without a birthday" do
    @user.birthday = nil
    assert_not @user.valid?
    assert_includes @user.errors.full_messages, "Birthday can't be blank"
  end
end
