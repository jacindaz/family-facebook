require "rails_helper"

describe Post do

  let(:user) { FactoryGirl.create(:user) }

  it "has a valid post factory" do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post, user: user)
    expect(post).to be_valid
  end

  it "is invalid when title is blank" do
    post = FactoryGirl.build(:post, title: '', user: user)

    expect(post).not_to be_valid
    expect(post.errors[:title].size).to eq(1)
    expect(post.errors[:title]).to include("can't be blank")
  end

  it "is invalid when body is blank" do
    post = FactoryGirl.build(:post, body: '', user: user)

    expect(post).not_to be_valid
    expect(post.errors[:body].size).to eq(2)
    expect(post.errors[:body]).to include("can't be blank")
    expect(post.errors[:body]).to include("must have at least 5 words.")
  end

  it "is able to delete a post" do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post, user: user)

    expect { post.destroy }.to change(Post, :count).from(1).to(0)
  end

end
