class ExerciseOption < ActiveRecord::Base

  has_many :exercises, dependent: :destroy
  has_many :exercise_logs, dependent: :destroy
  
end
