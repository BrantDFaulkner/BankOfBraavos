class Member < ActiveRecord::Base
  belongs_to :rank
  delegate :title, to: :rank

  belongs_to :activity_status
  delegate :status, to: :activity_status

  has_many :participations
  has_many :wars, through: :participations
  has_many :war_heros, through: :participations
  has_many :war_zeros, through: :participations
  has_many :violations, through: :participations


end
