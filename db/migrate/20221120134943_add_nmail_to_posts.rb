class AddNmailToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :nmail, :string
  end
end
