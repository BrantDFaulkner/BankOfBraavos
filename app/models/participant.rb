class Participant < ActiveRecord::Base
  belongs_to :member
  belongs_to :war
end
