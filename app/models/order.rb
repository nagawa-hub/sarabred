class Order < ApplicationRecord
  belongs_to :user
  belongs_to :company

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :order_status

  with_options presence: true do
    validates :order_name
    validates :start_date
    validates :end_date
    validates :order_leader
    validates :order_price
    validates :order_cost
    validates :order_status
  end

  with_options numericality: { other_than: 1 } do
    validates :order_status_id
  end

  before_save do
    self.order_profit = order_price - order_cost
  end

end
