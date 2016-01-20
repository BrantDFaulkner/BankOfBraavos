class MembersController < ApplicationController
  has_many :violations

  before_action :set_member, only: [:show, :edit, :update, :destroy]

  # GET /members
  def index
    @leaders =  Member.where("rank = 'leader'")
    @co_leaders = Member.where("rank = 'coleader'")
    @elders = Member.where("rank = 'elder'")
    @members = Member.where("rank = 'member'")
  end

  # GET /members/1
  def show
    @violations = @member.violations
  end

  # GET /members/new
  def new
    @member = Member.new
  end

  # GET /members/1/edit
  def edit
  end

  # POST /members
  def create
    @member = Member.new(member_params)

    respond_to do |format|
      if @member.save
        format.html { redirect_to @member, notice: 'Member was successfully created.' }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
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

    def member_params
      params.require(:member).permit(:user_name, :status, :rank)
    end
end
