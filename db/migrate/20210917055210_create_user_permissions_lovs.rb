class CreateUserPermissionsLovs < ActiveRecord::Migration[6.0]
  def change
    create_table :user_permissions_lovs do |t|
      t.string :role

      t.timestamps
    end
  end
end
