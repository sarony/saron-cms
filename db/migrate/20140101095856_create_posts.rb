class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.string :subtitle
      t.string :preview
      t.string :cover_art
      t.timestamps
    end
  end
end
