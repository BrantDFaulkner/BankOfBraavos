class ViolationTypesController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]
  before_action :set_violation_type, only: [:show, :edit, :update, :destroy]

  # GET /violation_types
  # GET /violation_types.json
  def index
    @violation_types = ViolationType.all
  end

  # GET /violation_types/1
  # GET /violation_types/1.json
  def show
  end

  # GET /violation_types/new
  def new
    @violation_type = ViolationType.new
  end

  # GET /violation_types/1/edit
  def edit
  end

  # POST /violation_types
  # POST /violation_types.json
  def create
    @violation_type = ViolationType.new(violation_type_params)

    respond_to do |format|
      if @violation_type.save
        format.html { redirect_to @violation_type, notice: 'Violation type was successfully created.' }
        format.json { render :show, status: :created, location: @violation_type }
      else
        format.html { render :new }
        format.json { render json: @violation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /violation_types/1
  # PATCH/PUT /violation_types/1.json
  def update
    respond_to do |format|
      if @violation_type.update(violation_type_params)
        format.html { redirect_to @violation_type, notice: 'Violation type was successfully updated.' }
        format.json { render :show, status: :ok, location: @violation_type }
      else
        format.html { render :edit }
        format.json { render json: @violation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /violation_types/1
  # DELETE /violation_types/1.json
  def destroy
    @violation_type.destroy
    respond_to do |format|
      format.html { redirect_to violation_types_url, notice: 'Violation type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_violation_type
      @violation_type = ViolationType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def violation_type_params
      params.require(:violation_type).permit(:description)
    end
end
