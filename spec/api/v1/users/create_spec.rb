require 'rails_helper'

RSpec.describe "users#create", type: :request do
  context 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'users',
          attributes: {
            name: Faker::Name.name,
            email: Faker::Internet.email
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        jsonapi_post "/api/v1/users", payload
      }.to change { User.count }.by(1)
      user = User.last

      assert_payload(:user, user, json_item)
    end
  end
end
