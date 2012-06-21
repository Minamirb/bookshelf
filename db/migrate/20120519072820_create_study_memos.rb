class CreateStudyMemos < ActiveRecord::Migration
  def change
    create_table :study_memos do |t|
      t.integer :book_id
      t.string :study_state
      t.text :note

      t.timestamps
    end
  end
end
