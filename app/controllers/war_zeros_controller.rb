class WarZerosController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]
  before_action :set_war_zero, only: [:show, :edit, :update, :destroy]

  # POST /war_zeros
  def create
    @war_zero = WarZero.new(war_zero_params)
    if @war_zero.save
      redirect_to :back, notice: "You declared a War Zero."
    else
      render :new
    end
  end

  # DELETE /war_zeros/1
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
