require 'rails_helper'

RSpec.describe "users#update", type: :request do
  context 'basic update' do
    let!(:user) { create(:user) }

    let(:payload) do
      {
        data: {
          id: user.id.to_s,
          type: 'users',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect {
        jsonapi_put "/api/v1/users/#{user.id}", payload
      }.to change { user.reload.attributes }
      assert_payload(:user, user, json_item)

      # ... assert updates attributes ...
    end
  end
end
