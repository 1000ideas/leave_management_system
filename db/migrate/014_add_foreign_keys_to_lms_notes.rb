class AddForeignKeysToLmsNotes < ActiveRecord::Migration
  def self.up
    add_column :lms_notes, :user_id, :integer
    add_column :lms_notes, :lms_leave_id, :integer
  end

  def self.down
    remove_column :lms_notes, :user_id
    remove_column :lms_notes, :lms_leave_id
  end
end