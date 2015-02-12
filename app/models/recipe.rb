class Recipe < ActiveRecord::Base
    validates :title, presence: true, length: { maximum: 254 }
    validates :category, presence: true, length: { maximum: 254 }
end

# give all strings a max length of 254
