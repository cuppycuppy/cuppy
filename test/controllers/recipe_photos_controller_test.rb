require 'test_helper'

class RecipePhotosControllerTest < ActionController::TestCase
  setup do
    @recipe_photo = recipe_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipe_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe_photo" do
    assert_difference('RecipePhoto.count') do
      post :create, recipe_photo: { recipe_id: @recipe_photo.recipe_id, title: @recipe_photo.title }
    end

    assert_redirected_to recipe_photo_path(assigns(:recipe_photo))
  end

  test "should show recipe_photo" do
    get :show, id: @recipe_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe_photo
    assert_response :success
  end

  test "should update recipe_photo" do
    patch :update, id: @recipe_photo, recipe_photo: { recipe_id: @recipe_photo.recipe_id, title: @recipe_photo.title }
    assert_redirected_to recipe_photo_path(assigns(:recipe_photo))
  end

  test "should destroy recipe_photo" do
    assert_difference('RecipePhoto.count', -1) do
      delete :destroy, id: @recipe_photo
    end

    assert_redirected_to recipe_photos_path
  end
end
