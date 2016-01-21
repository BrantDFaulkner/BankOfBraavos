class Participation< ActiveRecord::Base
  belongs_to :war
  belongs_to :member

  has_many :war_heros
  has_many :war_zeros



end
