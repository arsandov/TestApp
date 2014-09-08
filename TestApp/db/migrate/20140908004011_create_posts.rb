class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :user
      t.text :text
      t.string :tag1
      t.string :tag2
      t.string :tag3
      t.string :tag4
      t.string :tag5

      t.timestamps
    end
  end
end
