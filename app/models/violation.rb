class Violation < ActiveRecord::Base
  belongs_to :member
  belongs_to :violation_description
end
