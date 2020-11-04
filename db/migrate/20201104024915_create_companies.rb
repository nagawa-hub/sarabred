class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
    t.string :company_name, null: false 
    t.string :phone_number, null: false
    t.string :address
    t.string :building_name
    t.string :nearest_station
    t.integer :industry_id, null: false
    t.integer :capital_stock_id
    t.integer :employees_id
    t.integer :status_id,   null: false
    t.integer :rank_id,     null: false
    t.timestamps
    end
  end
end
