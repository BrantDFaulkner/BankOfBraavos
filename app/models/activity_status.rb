class ActivityStatus < ActiveRecord::Base
  has_many :members

  def self.inactive
    find_by_id(2).members.order(updated_at: :desc)
  end

  def self.temp_kicked
    find_by_id(3).members.order(updated_at: :desc)
  end

  def self.banned
    find_by_id(4).members.order(updated_at: :desc)
  end
end
