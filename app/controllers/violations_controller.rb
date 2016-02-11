class ViolationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_violation, only: [:destroy]

  def create
    @violation = Violation.new(violation_params)
    if @violation.save
      redirect_to :back, notice: "#{@violation.user_name} has received a violation."
    else
      render :new
    end
  end


  def destroy
    if @violation.destroy
      redirect_to :back, notice: "Successfully removed #{@violation.user_name}'s war violation."
    else
      redirect_to :back
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_violation
      @violation = Violation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def violation_params
      params.require(:violation).permit(:violation_type_id, :participation_id)
    end
end
