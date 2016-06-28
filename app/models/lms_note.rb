class LmsNote < ActiveRecord::Base
  unloadable

  attr_accessible :content, :user_id, :lms_leave_id

  belongs_to :lms_leave
  belongs_to :user
end
