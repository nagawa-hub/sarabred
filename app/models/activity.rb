class Activity < ApplicationRecord
  belongs_to :user
  belongs_to :company

  with_options presence: true do
    validates :activity_day
    validates :client_name
  end

end
