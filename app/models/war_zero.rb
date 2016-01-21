class WarZero < ActiveRecord::Base
  belongs_to :participation

  has_one :member, through: :participation
  delegate :user_name, to: :member
  delegate :title, to: :member

  has_one :war, through: :participation
end
