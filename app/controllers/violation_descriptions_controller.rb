class ViolationDescriptionsController < ApplicationController
  before_action :set_violation_description, only: [:show, :edit, :update, :destroy]

  # GET /violation_descriptions
  # GET /violation_descriptions.json
  def index
    @violation_descriptions = ViolationDescription.all
  end

  # GET /violation_descriptions/1
  # GET /violation_descriptions/1.json
  def show
  end

  # GET /violation_descriptions/new
  def new
    @violation_description = ViolationDescription.new
  end

  # GET /violation_descriptions/1/edit
  def edit
  end

  # POST /violation_descriptions
  # POST /violation_descriptions.json
  def create
    @violation_description = ViolationDescription.new(violation_description_params)

    respond_to do |format|
      if @violation_description.save
        format.html { redirect_to @violation_description, notice: 'Violation description was successfully created.' }
        format.json { render :show, status: :created, location: @violation_description }
      else
        format.html { render :new }
        format.json { render json: @violation_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /violation_descriptions/1
  # PATCH/PUT /violation_descriptions/1.json
  def update
    respond_to do |format|
      if @violation_description.update(violation_description_params)
        format.html { redirect_to @violation_description, notice: 'Violation description was successfully updated.' }
        format.json { render :show, status: :ok, location: @violation_description }
      else
        format.html { render :edit }
        format.json { render json: @violation_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /violation_descriptions/1
  # DELETE /violation_descriptions/1.json
  def destroy
    @violation_description.destroy
    respond_to do |format|
      format.html { redirect_to violation_descriptions_url, notice: 'Violation description was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_violation_description
      @violation_description = ViolationDescription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def violation_description_params
      params.require(:violation_description).permit(:violation_id, :content)
    end
end
