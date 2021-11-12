class CreateOpportunities < ActiveRecord::Migration[6.0]
  def change
    create_table :opportunities do |t|
      t.integer :contact_id
      t.integer :event_id
      t.string :event_title
      t.date :event_start
      t.date :event_end
      t.time :shift_start
      t.time :shift_end
      t.references :roles, null: false, foreign_key: true
      t.float :credit_hours
      t.references :request_statuses, null: false, foreign_key: true
      t.boolean :visibile
      t.text :comments


      t.timestamps
    end
  end
end
