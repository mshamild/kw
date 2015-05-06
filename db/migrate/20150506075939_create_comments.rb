class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user_name
      t.string :user_surname
      t.integer :user_id
      t.text :content
      t.integer :article_id

      t.timestamps null: false
    end
  end
end
