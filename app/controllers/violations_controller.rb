class ViolationsController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]
  before_action :set_violation, only: [:show, :edit, :update, :destroy]

  # GET /violations
  # GET /violations.json
  def index
    @violations = Violation.all
  end

  # GET /violations/1
  # GET /violations/1.json
  def show
  end

  # GET /violations/new
  def new
    @violation = Violation.new
  end

  # GET /violations/1/edit
  def edit
  end

  def create
    @violation = Violation.new(violation_params)
    if @violation.save
      redirect_to :back, notice: "#{@violation.user_name} has received a violation."
    else
      render :new
    end
  end

  # PATCH/PUT /violations/1
  # PATCH/PUT /violations/1.json
  def update
    respond_to do |format|
      if @violation.update(violation_params)
        format.html { redirect_to @violation, notice: 'Violation was successfully updated.' }
        format.json { render :show, status: :ok, location: @violation }
      else
        format.html { render :edit }
        format.json { render json: @violation.errors, status: :unprocessable_entity }
      end
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
