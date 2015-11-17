class RecipeSituationsController < ApplicationController
  before_action :set_recipe_situation, only: [:show, :edit, :update, :destroy]

  # GET /recipe_situations
  # GET /recipe_situations.json
  def index
    @recipe_situations = RecipeSituation.all
  end

  # GET /recipe_situations/1
  # GET /recipe_situations/1.json
  def show
  end

  # GET /recipe_situations/new
  def new
    @recipe_situation = RecipeSituation.new
  end

  # GET /recipe_situations/1/edit
  def edit
  end

  # POST /recipe_situations
  # POST /recipe_situations.json
  def create
    @recipe_situation = RecipeSituation.new(recipe_situation_params)

    respond_to do |format|
      if @recipe_situation.save
        format.html { redirect_to @recipe_situation, notice: 'Recipe situation was successfully created.' }
        format.json { render :show, status: :created, location: @recipe_situation }
      else
        format.html { render :new }
        format.json { render json: @recipe_situation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_situations/1
  # PATCH/PUT /recipe_situations/1.json
  def update
    respond_to do |format|
      if @recipe_situation.update(recipe_situation_params)
        format.html { redirect_to @recipe_situation, notice: 'Recipe situation was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe_situation }
      else
        format.html { render :edit }
        format.json { render json: @recipe_situation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_situations/1
  # DELETE /recipe_situations/1.json
  def destroy
    @recipe_situation.destroy
    respond_to do |format|
      format.html { redirect_to recipe_situations_url, notice: 'Recipe situation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_situation
      @recipe_situation = RecipeSituation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_situation_params
      params.require(:recipe_situation).permit(:recipe_id, :situation_id)
    end
end
