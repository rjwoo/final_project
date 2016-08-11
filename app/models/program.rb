class Program < ActiveRecord::Base
  has_many :exercises, dependent: :destroy

  belongs_to :users

  validates :title, presence: true, uniqueness: true
end
