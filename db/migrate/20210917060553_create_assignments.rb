class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.integer :contact_id
      t.references :opportunities
      t.references :request_statuses
      t.text :comments

      t.timestamps
    end
  end
end
