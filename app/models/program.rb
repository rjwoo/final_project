class Program < ActiveRecord::Base
  has_many :exercise_logs, dependent: :destroy
  has_many :exercises, through: :exercise_logs

  validates :title, presence: true
end
