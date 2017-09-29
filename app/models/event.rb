class Event < ApplicationRecord
    # belongs_to :creator, class_name: 'User'
    belongs_to :user
    has_many :attendances
    has_many :attendees, through: :attendances, class_name: 'User'
end
