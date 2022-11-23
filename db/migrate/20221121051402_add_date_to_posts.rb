class AddDateToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :date, :string
  end
end
