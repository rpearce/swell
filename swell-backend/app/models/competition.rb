class Competition < ActiveRecord::Base
  has_many :entrants

  validates :name, :location, :occurs_on, presence: true
end
