class Exercise < ActiveRecord::Base
  has_many :exercise_logs, dependent: :destroy

  belongs_to :exercise_option
  belongs_to :program

end
