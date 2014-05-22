class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.timestamp :time
      t.text :description
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
