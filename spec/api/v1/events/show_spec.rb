require 'rails_helper'

RSpec.describe "events#show", type: :request do
  context 'basic fetch' do
    let!(:event) { create(:event) }

    it 'serializes the resource correctly' do
      get "/api/v1/events/#{event.id}"

      assert_payload(:event, event, json_item)
    end
  end
end
