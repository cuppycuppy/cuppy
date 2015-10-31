class RecipePhotosController < ApplicationController
  before_action :set_recipe_photo, only: [:show, :edit, :update, :destroy]

  # GET /recipe_photos
  # GET /recipe_photos.json
  def index
    @recipe_photos = RecipePhoto.all
  end

  # GET /recipe_photos/1
  # GET /recipe_photos/1.json
  def show
  end

  # GET /recipe_photos/new
  def new
    @recipe_photo = RecipePhoto.new
  end

  # GET /recipe_photos/1/edit
  def edit
  end

  # POST /recipe_photos
  # POST /recipe_photos.json
  def create
    @recipe_photo = RecipePhoto.new(recipe_photo_params)

    respond_to do |format|
      if @recipe_photo.save
        format.html { redirect_to @recipe_photo, notice: 'Recipe photo was successfully created.' }
        format.json { render :show, status: :created, location: @recipe_photo }
      else
        format.html { render :new }
        format.json { render json: @recipe_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_photos/1
  # PATCH/PUT /recipe_photos/1.json
  def update
    respond_to do |format|
      if @recipe_photo.update(recipe_photo_params)
        format.html { redirect_to @recipe_photo, notice: 'Recipe photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe_photo }
      else
        format.html { render :edit }
        format.json { render json: @recipe_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_photos/1
  # DELETE /recipe_photos/1.json
  def destroy
    @recipe_photo.destroy
    respond_to do |format|
      format.html { redirect_to recipe_photos_url, notice: 'Recipe photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_photo
      @recipe_photo = RecipePhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_photo_params
      params.require(:recipe_photo).permit(:title, :recipe_id)
    end
end
