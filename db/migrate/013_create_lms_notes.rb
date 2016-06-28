class CreateLmsNotes < ActiveRecord::Migration
  def change
    create_table :lms_notes do |t|
      t.text :content

      t.timestamps
    end
  end
end
