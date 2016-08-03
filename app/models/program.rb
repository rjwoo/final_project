class Program < ActiveRecord::Base
  has_many :exercise_logs, dependent: :destroy

  validates :title, presence: true
end
