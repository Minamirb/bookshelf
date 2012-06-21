class StudyMemo < ActiveRecord::Base
  attr_accessible :book_id, :note, :study_state
end
