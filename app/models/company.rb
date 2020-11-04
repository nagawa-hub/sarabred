class Company < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :industry
  belongs_to_active_hash :capital_stock
  belongs_to_active_hash :employee
  belongs_to_active_hash :status
  belongs_to_active_hash :rank

end
