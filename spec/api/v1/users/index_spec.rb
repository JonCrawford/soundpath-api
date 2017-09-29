require 'rails_helper'

RSpec.describe "users#index", type: :request do
  context 'basic fetch' do
    let!(:user1) { create(:user) }
    let!(:user2) { create(:user) }

    it 'serializes the list correctly' do
      get "/api/v1/users"

      expect(json_ids(true)).to match_array([user1.id, user2.id])
      assert_payload(:user, user1, json_items[0])
      assert_payload(:user, user2, json_items[1])
    end
  end
end
