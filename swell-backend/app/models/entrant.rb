class Entrant < ActiveRecord::Base
  belongs_to :competition
  belongs_to :surfer

  validates :competition_id, :surfer_id, presence: true
end
