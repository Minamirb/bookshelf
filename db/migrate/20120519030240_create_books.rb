class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :field_id
      t.integer :publisher_id
      t.date :published_date
      t.integer :edition
      t.integer :amazon_url
      t.integer :bookimg
      t.text :note
      t.integer :ISBN

      t.timestamps
    end
  end
end
