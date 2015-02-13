class Direction < ActiveRecord::Base
    validates :direction, presence: true, length: { maximum: 254 }
end
