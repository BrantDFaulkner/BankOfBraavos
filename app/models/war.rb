class War < ActiveRecord::Base
  has_many :participants
  has_many :war_heros
  has_many :war_zeros

  def result
    if stars > opponent_stars
      "Win"
    elsif stars < opponent_stars
      "Loss"
    elsif stars == opponent_stars && tie_breaker == "Win"
      "Win"
    elsif stars == opponent_stars && tie_breaker == "Lose"
      "Loss"
    else
      "TBD"
    end
  end
end
