class Attendance < ApplicationRecord
    belongs_to :event
    belongs_to :user
    # has_one :location, through: :event
    # has_many :friends Hash?

    validates_presence_of :event
    validates_presence_of :user
end
