class CreateOpportunities < ActiveRecord::Migration[6.0]
  def change
    create_table :opportunities do |t|
      t.integer :contact_id
      t.integer :event_id
      t.string :event_title
      t.datetime :event_start
      t.datetime :event_end
      t.datetime :shift_start
      t.datetime :shift_end
      t.belongs_to :role, null: false, foreign_key: true
      t.float :credit_hours
      t.belongs_to :request_status, null: false, foreign_key: true
      t.boolean :visibile
      t.text :comments


      t.timestamps
    end
  end
end
