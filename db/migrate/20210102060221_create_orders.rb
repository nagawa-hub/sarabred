class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :order_name,    null: false
      t.date :start_date,      null: false
      t.date :end_date,        null: false
      t.text :order_comment
      t.integer :order_price,  null: false
      t.integer :order_cost,   null: false
      t.integer :order_profit, null: false
      t.references :user,      foreign_key: true
      t.references :company,   foreign_key: true
      t.timestamps
    end
  end
end
