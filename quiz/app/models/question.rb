class Question < ActiveRecord::Base
  validates_presence_of :question, :one, :two, :three, :four, :answer, :Quiz_Num
end
