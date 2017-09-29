require 'rails_helper'

RSpec.describe "events#destroy", type: :request do
  context 'basic destroy' do
    let!(:event) { FactoryGirl.create(:event) }

    it 'updates the resource' do
      expect {
        delete "/api/v1/events/#{event.id}"
      }.to change { Event.count }.by(-1)

      expect(response.status).to eq(204)
    end
  end
end
