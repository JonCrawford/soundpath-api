require 'rails_helper'

RSpec.describe Event, type: :model do
  
  it { should belong_to(:user).class_name('User')}
  it { should have_many(:attendances)}
  it { should have_many(:attendees).class_name('User') }
end
