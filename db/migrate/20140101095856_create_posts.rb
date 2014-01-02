class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subtitle
      t.string :cover_art
      t.string :type
      t.string :preview
      t.string :image
      t.string :body
      t.timestamps
    end
  end
end
