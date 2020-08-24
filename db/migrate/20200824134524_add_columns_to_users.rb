class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :average_rating, :integer
    add_column :users, :nickname, :string
    add_column :users, :description, :text
  end
end
