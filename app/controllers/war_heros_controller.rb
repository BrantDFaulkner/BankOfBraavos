class WarHerosController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]
  before_action :set_war_hero, only: [:show, :edit, :update, :destroy]

  def create
    @war_hero = WarHero.new(war_hero_params)
    if @war_hero.save
      redirect_to :back, notice: "You declared a War Hero."
    else
      render :new
    end
  end

  # DELETE /war_heros/1
  def destroy
    @war_hero.destroy
    redirect_to :back, notice: 'War Hero was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_war_hero
      @war_hero = WarHero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def war_hero_params
      params.require(:war_hero).permit(:participation_id, :reason)
    end
end
