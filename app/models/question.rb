class Question < ActiveRecord::Base
#  attr_accessible :position, :question
  acts_as_list
  has_many :choices
end
