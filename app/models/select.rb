class Select < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :deliveryfeeburgen
  belongs_to_active_hash :deliveryservice
  belongs_to_active_hash :deliveryarea
  belongs_to_active_hash :deliveryhandingtime
  belongs_to_active_hash :itemcondition
end