class Exercise < ActiveRecord::Base
  has_many :exercise_logs, dependent: :destroy
  has_many :programs, through: :exercise_logs
end
