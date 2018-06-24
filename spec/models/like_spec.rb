require 'rails_helper'

RSpec.describe Like, type: :model do
  before(:all) do
    @like = create(:like)
  end

  it "is valid" do
    expect(@like).to be_valid
  end
end
