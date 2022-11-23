class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :item_name
      t.string :name
      t.string :contact
      t.string :email

      t.timestamps
    end
  end
end
