require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
  	@user = User.new(name: "Carlitos33", history: "Yo me uni de pequeño a la guerrilla por...", zone: "Sur",
  		password: "password", password_confirmation: "password")
  end

  test "should be valid" do
  	assert @user.valid?
  end

  test "name should be present" do
  	@user.name = "   "
  	assert_not @user.valid?
  end

  test "name should be unique" do
  	@duplicate = @user.dup
  	@user.save
  	@duplicate.name = @duplicate.name.upcase
  	assert_not @duplicate.valid?
  end

  test "zone should be present" do
  	@user.zone = "   "
  	assert_not @user.valid?
  end

  test "password should be present" do
  	@user.password = @user.password_confirmation = "   "
  	assert_not @user.valid?
  end

end
