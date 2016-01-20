class WarHerosController < ApplicationController
  before_action :set_war_hero, only: [:show, :edit, :update, :destroy]

  # GET /war_heros
  # GET /war_heros.json
  def index
    @war_heros = WarHero.all
  end

  # GET /war_heros/1
  # GET /war_heros/1.json
  def show
  end

  # GET /war_heros/new
  def new
    @war_hero = WarHero.new
  end

  # GET /war_heros/1/edit
  def edit
  end

  # POST /war_heros
  # POST /war_heros.json
  def create
    @war_hero = WarHero.new(war_hero_params)

    respond_to do |format|
      if @war_hero.save
        format.html { redirect_to @war_hero, notice: 'War hero was successfully created.' }
        format.json { render :show, status: :created, location: @war_hero }
      else
        format.html { render :new }
        format.json { render json: @war_hero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /war_heros/1
  # PATCH/PUT /war_heros/1.json
  def update
    respond_to do |format|
      if @war_hero.update(war_hero_params)
        format.html { redirect_to @war_hero, notice: 'War hero was successfully updated.' }
        format.json { render :show, status: :ok, location: @war_hero }
      else
        format.html { render :edit }
        format.json { render json: @war_hero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /war_heros/1
  # DELETE /war_heros/1.json
  def destroy
    @war_hero.destroy
    respond_to do |format|
      format.html { redirect_to war_heros_url, notice: 'War hero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_war_hero
      @war_hero = WarHero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def war_hero_params
      params.require(:war_hero).permit(:participant_id, :description)
    end
end
