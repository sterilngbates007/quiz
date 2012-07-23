class Choice < ActiveRecord::Base
#  attr_accessible :choice, :question_id
  belongs_to :question
end
