class Program < ActiveRecord::Base
  has_many :exercises, dependent: :destroy

  validates :title, presence: true, uniqueness: true
end
