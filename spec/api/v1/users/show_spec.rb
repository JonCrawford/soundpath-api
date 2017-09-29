require 'rails_helper'

RSpec.describe "users#show", type: :request do
  context 'basic fetch' do
    let!(:user) { create(:user) }

    it 'serializes the resource correctly' do
      get "/api/v1/users/#{user.id}"

      assert_payload(:user, user, json_item)
    end
  end
end
