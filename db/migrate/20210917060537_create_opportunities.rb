class CreateOpportunities < ActiveRecord::Migration[6.0]
  def change
    create_table :opportunities do |t|
      t.integer :event_id
      t.string :event_title
      t.date :event_date
      t.time :shift_start
      t.time :shift_end
      t.references :roles
      t.float :credit_hours
      t.boolean :visibility


      t.timestamps
    end
  end
end
