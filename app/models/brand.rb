class Brand < ApplicationRecord
  has_many :items
  belongs_to :brand_group
  belongs_to :category
end
