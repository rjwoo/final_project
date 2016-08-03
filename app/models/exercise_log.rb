class ExerciseLog < ActiveRecord::Base
  belongs_to :exercise_option
  belongs_to :exercise

  validates :reps, presence: true
  validates :weight, presence: true
end
