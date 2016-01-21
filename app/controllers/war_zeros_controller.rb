class WarZerosController < ApplicationController
  before_action :set_war_zero, only: [:show, :edit, :update, :destroy]

  # GET /war_zeros
  # GET /war_zeros.json
  def index
    @war_zeros = WarZero.all
  end

  # GET /war_zeros/1
  # GET /war_zeros/1.json
  def show
  end

  # GET /war_zeros/new
  def new
    @war_zero = WarZero.new
  end

  # GET /war_zeros/1/edit
  def edit
  end

  # POST /war_zeros
  # POST /war_zeros.json
  def create
    @war_zero = WarZero.new(war_zero_params)
    if @war_zero.save
      redirect_to :back, notice: "You declared a War Zero."
    else
      render :new
    end
  end

  # PATCH/PUT /war_zeros/1
  # PATCH/PUT /war_zeros/1.json
  def update
    respond_to do |format|
      if @war_zero.update(war_zero_params)
        format.html { redirect_to @war_zero, notice: 'War zero was successfully updated.' }
        format.json { render :show, status: :ok, location: @war_zero }
      else
        format.html { render :edit }
        format.json { render json: @war_zero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /war_zeros/1
  # DELETE /war_zeros/1.json
  def destroy
    @war_zero.destroy
    redirect_to :back, notice: 'War Zero was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_war_zero
      @war_zero = WarZero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def war_zero_params
      params.require(:war_zero).permit(:participation_id, :reason)
    end
end
