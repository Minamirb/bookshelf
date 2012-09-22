class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.string :status
      t.text :comment
      t.references :book

      t.timestamps
    end
    add_index :studies, :book_id
  end
end
