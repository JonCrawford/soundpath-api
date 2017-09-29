require 'rails_helper'

RSpec.describe "users#destroy", type: :request do
  context 'basic destroy' do
    let!(:user) { FactoryGirl.create(:user) }

    it 'updates the resource' do
      expect {
        delete "/api/v1/users/#{user.id}"
      }.to change { User.count }.by(-1)

      expect(response.status).to eq(204)
    end
  end
end
