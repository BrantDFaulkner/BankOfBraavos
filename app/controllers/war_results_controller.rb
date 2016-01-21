class WarResultsController < ApplicationController
  before_action :set_war_result, only: [:show, :edit, :update, :destroy]

  # GET /war_results
  # GET /war_results.json
  def index
    @war_results = WarResult.all
  end

  # GET /war_results/1
  # GET /war_results/1.json
  def show
  end

  # GET /war_results/new
  def new
    @war_result = WarResult.new
  end

  # GET /war_results/1/edit
  def edit
  end

  # POST /war_results
  # POST /war_results.json
  def create
    @war_result = WarResult.new(war_result_params)

    respond_to do |format|
      if @war_result.save
        format.html { redirect_to @war_result, notice: 'War result was successfully created.' }
        format.json { render :show, status: :created, location: @war_result }
      else
        format.html { render :new }
        format.json { render json: @war_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /war_results/1
  # PATCH/PUT /war_results/1.json
  def update
    respond_to do |format|
      if @war_result.update(war_result_params)
        format.html { redirect_to @war_result, notice: 'War result was successfully updated.' }
        format.json { render :show, status: :ok, location: @war_result }
      else
        format.html { render :edit }
        format.json { render json: @war_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /war_results/1
  # DELETE /war_results/1.json
  def destroy
    @war_result.destroy
    respond_to do |format|
      format.html { redirect_to war_results_url, notice: 'War result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_war_result
      @war_result = WarResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def war_result_params
      params.require(:war_result).permit(:result)
    end
end
