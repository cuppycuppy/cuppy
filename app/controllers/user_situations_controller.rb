class UserSituationsController < ApplicationController
  before_action :set_user_situation, only: [:show, :edit, :update, :destroy]

  # GET /user_situations
  # GET /user_situations.json
  def index
    @user_situations = UserSituation.all
  end

  # GET /user_situations/1
  # GET /user_situations/1.json
  def show
  end

  # GET /user_situations/new
  def new
    @user_situation = UserSituation.new
  end

  # GET /user_situations/1/edit
  def edit
  end

  # POST /user_situations
  # POST /user_situations.json
  def create
    @user_situation = UserSituation.new(user_situation_params)

    respond_to do |format|
      if @user_situation.save
        format.html { redirect_to @user_situation, notice: 'User situation was successfully created.' }
        format.json { render :show, status: :created, location: @user_situation }
      else
        format.html { render :new }
        format.json { render json: @user_situation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_situations/1
  # PATCH/PUT /user_situations/1.json
  def update
    respond_to do |format|
      if @user_situation.update(user_situation_params)
        format.html { redirect_to @user_situation, notice: 'User situation was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_situation }
      else
        format.html { render :edit }
        format.json { render json: @user_situation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_situations/1
  # DELETE /user_situations/1.json
  def destroy
    @user_situation.destroy
    respond_to do |format|
      format.html { redirect_to user_situations_url, notice: 'User situation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_situation
      @user_situation = UserSituation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_situation_params
      params.require(:user_situation).permit(:user_id, :situation_id)
    end
end
