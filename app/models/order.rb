class Order < ApplicationRecord
  belongs_to :user
  belongs_to :company

  with_options presence: true do
    validates :order_name
    validates :start_date
    validates :end_date
    validates :order_price
    validates :order_cost
    validates :order_profit
  end
end
