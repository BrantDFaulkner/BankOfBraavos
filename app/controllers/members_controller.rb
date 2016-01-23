class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  def index
    @leaders = []
    @co_leaders = []
    @elders = []
    @members = []

    active_members.each do |member|
      @leaders << member if member.title == "Leader"
      @co_leaders << member if member.title == "Co-Leader"
      @elders << member if member.title == "Elder"
      @members << member if member.title == "Member"
    end
  end

  def show
    @hero_wars = @member.war_heros.map do |award|
      award.war
    end

    @zero_wars = @member.war_zeros.map do |award|
      award.war
    end

    @violation_wars = @member.violations.map do |violation|
      violation.war
    end
  end

  # GET /members/new
  def new
    @member = Member.new
    @select_rank = Rank.all.map do |rank|
      [rank.title, rank.id]
    end

    @select_activity_status = ActivityStatus.all.map do |status|
      [status.status, status.id]
    end
  end

  # GET /members/1/edit
  def edit
    @select_rank = Rank.all.map do |rank|
      [rank.title, rank.id]
    end

    @select_activity_status = ActivityStatus.all.map do |status|
      [status.status, status.id]
    end
  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to members_path, notice: "#{@member.user_name} was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to @member, notice: 'Member was successfully updated.' }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:user_name, :rank_id, :activity_status_id)
    end
end
