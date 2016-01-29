class WarsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]
  before_action :set_war, only: [:show, :edit, :update, :destroy]

  def index
    @wars = War.all.order(created_at: :desc)
  end

  def show

    @participations = @war.participations.joins(:member).order('LOWER(members.user_name)')

    @war_heros = @war.war_heros
    @war_zeros = @war.war_zeros
    @violations = @war.violations
    @participants = @war.participants#.order(:user_name)

    @participation = Participation.new
    @select_participant = (active_members - @participants).map do |participant|
      [participant.user_name, participant.id]
    end

    @war_hero = WarHero.new
    @select_war_hero = @participations.map do |participation|
      [participation.user_name, participation.id]
    end

    @war_zero = WarZero.new
    @select_war_zero = @participations.map do |participation|
      [participation.user_name, participation.id]
    end

    @violation = Violation.new
    @select_violator = @participations.map do |participation|
      [participation.user_name, participation.id]
    end
    @select_violation_type = ViolationType.all.map do |type|
      [type.description, type.id]
    end
  end#show

  # GET /wars/new
  def new
    @war = War.new
  end

  # GET /wars/1/edit
  def edit
  end

  def create
    @war = War.new(war_params)
    @war.initialize_properties
    if @war.save
      redirect_to wars_path, notice: "War vs. #{@war.opponent} created."
    else
      render :new
    end
  end

  def update
    @war.assign_attributes(war_params)
    @war.assign_war_result_id
    if @war.save
      redirect_to @war, notice: 'War was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /wars/1
  # DELETE /wars/1.json
  def destroy
    @war.destroy
    respond_to do |format|
      format.html { redirect_to wars_url, notice: 'War was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_war
      @war = War.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def war_params
      params.require(:war).permit(:opponent, :stars, :destruction, :opp_stars, :opp_destruction)
    end
end
