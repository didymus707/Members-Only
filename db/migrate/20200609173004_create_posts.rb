class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :author_name
      t.text :story

      t.timestamps
    end
  end
end
