class Violation < ActiveRecord::Base
  belongs_to :violation_type
  belongs_to :particpant
end
