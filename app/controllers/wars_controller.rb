class WarsController < ApplicationController
  before_action :set_war, only: [:show, :edit, :update, :destroy]

  def index
    @wars = War.all
  end

  def show
    # @participations = @war.participations
    # @participants = @war.members
    # @war_heros = @war.war_heros
    # @war_zeros = @war.war_zeros

    # participant_ids = @participants.map do |participant|
    #   participant.member.id
    # end
    @participants = @war.participants

    @select_participant = (active_members - @participants).map do |participant|
      [participant.user_name, participant.id]
    end


    # @select_from_participants = @participants.map do |participant|
    #
    # end

    @participation = Participation.new

    # @war_hero = WarHero.new
    # @war_zero = WarZero.new


  end

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
