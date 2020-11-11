class Company < ApplicationRecord
  belongs_to :user
  has_many :activities, dependent: :destroy 

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :industry
  belongs_to_active_hash :capital_stock
  belongs_to_active_hash :employee
  belongs_to_active_hash :status
  belongs_to_active_hash :rank

  with_options presence: true do
    validates :company_name
    validates :phone_number 
    validates :industry_id 
    validates :status_id
    validates :rank_id
  end

  with_options numericality: { other_than: 1 } do
    validates :industry_id 
    validates :status_id
    validates :rank_id
  end

  def self.search(search)
    if search != ""
      Company.where('company_name LIKE(?)', "%#{search}%").includes(:user).order("created_at DESC")
    else
      Company.includes(:user).order("created_at DESC")
    end
  end
end
