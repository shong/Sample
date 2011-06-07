require 'spec_helper'

describe User do
  it "should create a user given valid attributes" do
    user = Factory.build(:user)
    user.should be_valid
  end

  it "should reject a user with a duplicate username" do
    Factory(:user)
    new_user = Factory.build(:user, :email => "test@email.com")
    new_user.should_not be_valid
  end

  it "should reject a user without a username" do
    user = Factory.build(:user, :username => "")
    user.should_not be_valid
  end
end
