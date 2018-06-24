require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET show" do
    before do
      get :show, params: { id: user.id }
    end

    let!(:user) { create(:user) }

    it "success" do
      get :show, params: { id: 1 }

      json_response = JSON.parse(response.body)

      expect(response.status).to eql(200)
      expect(json_response['email']).to match(user.email)
      expect(json_response['first_name']).to match(user.first_name)
    end
  end
end
