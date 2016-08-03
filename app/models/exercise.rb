class Exercise < ActiveRecord::Base
  belongs_to :program
  belongs_to :exercise_option
end
