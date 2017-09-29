require 'rails_helper'

RSpec.describe "events#create", type: :request do
  context 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'events',
          attributes: {
            datetime: 1.week.ago.to_i.to_s,
            notes: Faker::Lorem.paragraphs(2).join("\p")
          }
        }
      }
    end

    before(:all) do
      create :user
    end

    after(:all) do
      User.destroy_all
    end

    it 'creates the resource' do
      expect {
        jsonapi_post "/api/v1/events", payload
      }.to change { Event.count }.by(1)
      event = Event.last

      assert_payload(:event, event, json_item)
    end
  end
end
