class Company < ApplicationRecord
  belongs_to :user
  has_many :orders

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :industry

  with_options presence: true do
    validates :company_name
    validates :phone_number
    validates :post_number
    validates :address
    validates :industry_id
  end

  with_options numericality: { other_than: 1 } do
    validates :industry_id
  end

end
