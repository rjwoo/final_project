class Exercise < ActiveRecord::Base
  has_many :exercise_logs, dependent: :destroy

  belongs_to :exercise_option
  belongs_to :program

  def exercise_date
    date = []
    self.exercise_logs.each do |f|
      date << f.created_at.strftime("%F")
    end
    date
  end

  def weight_lifted
    weight = []
    self.exercise_logs.each do |l|
      weight << l.weight
    end
    weight
  end

  def volume_lifted
    volume = []
    self.exercise_logs.each do |x|
      volume << x.volume
    end
    volume
  end

end
