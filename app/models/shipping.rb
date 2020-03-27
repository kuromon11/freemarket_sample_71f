class Shipping < ApplicationRecord
  belongs_to :item, optional: true

  validates :fee_burgen_id, presence: true
  validates :service_id, presence: true
  validates :area_id, presence: true
  validates :handling_time_id, presence: true
end
