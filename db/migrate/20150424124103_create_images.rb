class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.integer :imageable_id
      t.string :imageable_type
      t.text :description
      t.string :image

      t.timestamps null: false
    end
  end
end
