class AddFieldsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :link, :string
    add_column :posts, :category, :string
  end
end
