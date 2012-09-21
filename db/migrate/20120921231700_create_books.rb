class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :version
      t.date :published_on
      t.string :isbn
      t.string :image_url
      t.string :amazon_url
      t.references :publisher

      t.timestamps
    end
    add_index :books, :publisher_id
  end
end
