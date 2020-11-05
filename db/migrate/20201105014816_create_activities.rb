class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.date :activity_day,  null: false
      t.string :client_name, null:false
      t.text :memo
      t.references :user,    foreign_key: true
      t.references :company, foreign_key: true
      t.timestamps
    end
  end
end
