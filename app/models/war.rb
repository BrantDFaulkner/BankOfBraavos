class War < ActiveRecord::Base
  belongs_to :war_result
  delegate :result, to: :war_result

  has_many :participations
  # has_many :members, through: :participations
  has_many :participants, through: :participations, source: :member
  has_many :war_heros, through: :participations
  has_many :war_zeros, through: :participations
  has_many :violations, through: :participations



  # has_many :members, through: :participations, foreign_key: :member_id

  # has_many :war_heros
  # has_many :war_zeros

# throws 'undefined method 'fetch_value' for nil:NilClass?
  # def initialize
  #   @war_result_id = 1
  #   @stars = 0
  #   @destruction = 0.0
  #   @opp_stars = 0
  #   @opp_destruction = 0.0
  # end

  def assign_war_result_id
    if stars > opp_stars
      self.war_result_id = 2
    elsif stars < opp_stars
      self.war_result_id = 3
    elsif stars == opp_stars && destruction > opp_destruction
      self.war_result_id = 2
    elsif stars == opp_stars && destruction < opp_destruction
      self.war_result_id = 3
    elsif stars == opp_stars && destruction == opp_destruction
      self.war_result_id = 4
    end
  end

  def initialize_properties
    self.war_result_id = 1
    self.stars = 0
    self.destruction = 0.0
    self.opp_stars = 0
    self.opp_destruction = 0.0
  end


end
