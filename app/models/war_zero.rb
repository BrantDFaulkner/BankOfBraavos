class WarZero < ActiveRecord::Base
  belongs_to :war
  belongs_to :participant
end
