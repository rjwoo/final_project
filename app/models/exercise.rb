class Exercise < ActiveRecord::Base
  has_many :exercise_logs, dependent: :nullify
end
