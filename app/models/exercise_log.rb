class ExerciseLog < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :exercise_option
end
