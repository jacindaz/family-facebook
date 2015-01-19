require "rails_helper"

describe User do

  it "has a valid user factory" do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  it "is invalid when email is blank" do
    user = FactoryGirl.build(:user, email: '')

    expect(user).not_to be_valid

    # Figure out - why does it have can't be blank twice
    # in user.errors ????? 
    expect(user.errors[:email].size).to eq(3)
    expect(user.errors[:email]).to include("can't be blank")

    expect(user.errors[:email]).to include("must be a valid email address")
  end

  it "is invalid when doesn't include @ sign" do
    user = FactoryGirl.build(:user, email: 'lalala')

    expect(user).not_to be_valid
    expect(user.errors[:email].size).to eq(2)
    expect(user.errors[:email]).to include("is invalid")
    expect(user.errors[:email]).to include("must be a valid email address")
  end

end
