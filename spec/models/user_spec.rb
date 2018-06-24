require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    @user = create(:user)
  end

  it "is valid" do
    expect(@user).to be_valid
  end

  it "is not valid without email" do
    user = build(:user, email: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without first_name" do
    user = build(:user, first_name: nil)
    expect(user).to_not be_valid
  end
end
