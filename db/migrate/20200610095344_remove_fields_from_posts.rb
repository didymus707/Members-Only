class RemoveFieldsFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :author_name, :string
  end
end
