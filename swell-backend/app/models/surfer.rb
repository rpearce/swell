class Surfer < ActiveRecord::Base
  has_many :entrants
  has_many :competitions, through: :entrants

  validates :name, presence: true
end
