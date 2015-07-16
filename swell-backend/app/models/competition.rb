class Competition < ActiveRecord::Base
  has_many :entrants
  has_many :surfers, through: :entrants

  validates :name, :location, :occurs_on, presence: true
end
