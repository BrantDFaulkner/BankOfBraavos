class Member < ActiveRecord::Base
  has_many :violations
end
