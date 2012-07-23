class Answer < ActiveRecord::Base
#  attr_accessible :choice_id, :question_id
  belongs_to :question
  belongs_to :choice
end
