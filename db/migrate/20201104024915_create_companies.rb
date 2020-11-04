class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
    t.string :company_name, null: false 
    t.string :phone_number, null: false
    t.string :address
    t.string :building_name
    t.integer :industry_id, null: false
    t.integer :status_id,   null: false
    t.integer :rank_id,     null: false
    t.timestamps
    end
  end
end
