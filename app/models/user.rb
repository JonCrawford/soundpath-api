class User < ApplicationRecord
    # has_many :attendances, dependent: :destroy # Come back to this.
    has_many :events
end
