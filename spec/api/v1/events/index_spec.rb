require 'rails_helper'

RSpec.describe "events#index", type: :request do
  context 'basic fetch' do
    let!(:event1) { create(:event) }
    let!(:event2) { create(:event) }

    it 'serializes the list correctly' do
      get "/api/v1/events"

      expect(json_ids(true)).to match_array([event1.id, event2.id])
      assert_payload(:event, event1, json_items[0])
      assert_payload(:event, event2, json_items[1])
    end
  end
end
