class Member < ActiveRecord::Base
  belongs_to :rank
  belongs_to :status
end
