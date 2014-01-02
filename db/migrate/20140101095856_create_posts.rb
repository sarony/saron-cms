class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.string :subtitle
      t.string :preview
      t.string :cover_art
      t.string :post_type
      t.string :image
      t.timestamps
    end
  end
end
