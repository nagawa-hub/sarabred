class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
    t.string :company_name, null: false
    t.string :company_short_name 
    t.string :phone_number, null: false
    t.string :post_number,  null: false
    t.string :address,      null: false
    t.string :building_name
    t.string :president
    t.integer :industry_id
    t.integer :capital_stock
    t.integer :employee
    t.references :user,     foreign_key: true
    t.timestamps
    end
  end
end
