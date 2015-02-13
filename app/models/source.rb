class Source < ActiveRecord::Base
    validates :name, presence: true, length: { maximum: 254 }
    validates :description, presence: true, length: { maximum: 254 }
end




