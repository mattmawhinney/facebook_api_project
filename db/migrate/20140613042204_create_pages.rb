class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :facebook_id
      t.string :about
      t.string :bio
      t.string :category
      t.string :image_url
      t.string :hometown
      t.integer :likes
      t.string :link
      t.string :name
      t.string :username

      t.timestamps
    end
  end
end
