require 'rails_helper'

RSpec.describe "events#update", type: :request do
  context 'basic update' do
    let!(:event) { create(:event) }

    let(:payload) do
      {
        data: {
          id: event.id.to_s,
          type: 'events',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect {
        jsonapi_put "/api/v1/events/#{event.id}", payload
      }.to change { event.reload.attributes }
      assert_payload(:event, event, json_item)

      # ... assert updates attributes ...
    end
  end
end
