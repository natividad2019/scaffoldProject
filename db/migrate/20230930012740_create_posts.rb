class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :picture_url
      t.string :comment
      t.integer :likes

      t.timestamps
    end
  end
end
