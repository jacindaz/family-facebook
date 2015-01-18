require "rails_helper"

describe User do

  it "has a valid user factory" do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  it "is invalid when email is blank" do
    user = FactoryGirl.build(:user, email: '')

    expect(user).not_to be_valid
  end

end
