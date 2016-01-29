class Participation< ActiveRecord::Base
  belongs_to :war
  belongs_to :member
  delegate :user_name, to: :member

  has_many :war_heros
  has_many :war_zeros
  has_many :violations

end
