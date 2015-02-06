class Recipe < ActiveRecord::Base
    validates :title, presence: true, length: { maximum: 254 }
    validates :category, presence: true, length: { maximum: 254 }
end
