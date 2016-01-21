class Violation < ActiveRecord::Base
  belongs_to :violation_type
  delegate :description, to: :violation_type

  belongs_to :participation
  has_one :member, through: :participation
  delegate :user_name, to: :member
  delegate :title, to: :member
  has_one :war, through: :participation

end
