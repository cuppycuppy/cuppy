require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe CupRecipesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # CupRecipe. As you add validations to CupRecipe, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CupRecipesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all cup_recipes as @cup_recipes" do
      cup_recipe = CupRecipe.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:cup_recipes)).to eq([cup_recipe])
    end
  end

  describe "GET #show" do
    it "assigns the requested cup_recipe as @cup_recipe" do
      cup_recipe = CupRecipe.create! valid_attributes
      get :show, {:id => cup_recipe.to_param}, valid_session
      expect(assigns(:cup_recipe)).to eq(cup_recipe)
    end
  end

  describe "GET #new" do
    it "assigns a new cup_recipe as @cup_recipe" do
      get :new, {}, valid_session
      expect(assigns(:cup_recipe)).to be_a_new(CupRecipe)
    end
  end

  describe "GET #edit" do
    it "assigns the requested cup_recipe as @cup_recipe" do
      cup_recipe = CupRecipe.create! valid_attributes
      get :edit, {:id => cup_recipe.to_param}, valid_session
      expect(assigns(:cup_recipe)).to eq(cup_recipe)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new CupRecipe" do
        expect {
          post :create, {:cup_recipe => valid_attributes}, valid_session
        }.to change(CupRecipe, :count).by(1)
      end

      it "assigns a newly created cup_recipe as @cup_recipe" do
        post :create, {:cup_recipe => valid_attributes}, valid_session
        expect(assigns(:cup_recipe)).to be_a(CupRecipe)
        expect(assigns(:cup_recipe)).to be_persisted
      end

      it "redirects to the created cup_recipe" do
        post :create, {:cup_recipe => valid_attributes}, valid_session
        expect(response).to redirect_to(CupRecipe.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved cup_recipe as @cup_recipe" do
        post :create, {:cup_recipe => invalid_attributes}, valid_session
        expect(assigns(:cup_recipe)).to be_a_new(CupRecipe)
      end

      it "re-renders the 'new' template" do
        post :create, {:cup_recipe => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested cup_recipe" do
        cup_recipe = CupRecipe.create! valid_attributes
        put :update, {:id => cup_recipe.to_param, :cup_recipe => new_attributes}, valid_session
        cup_recipe.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested cup_recipe as @cup_recipe" do
        cup_recipe = CupRecipe.create! valid_attributes
        put :update, {:id => cup_recipe.to_param, :cup_recipe => valid_attributes}, valid_session
        expect(assigns(:cup_recipe)).to eq(cup_recipe)
      end

      it "redirects to the cup_recipe" do
        cup_recipe = CupRecipe.create! valid_attributes
        put :update, {:id => cup_recipe.to_param, :cup_recipe => valid_attributes}, valid_session
        expect(response).to redirect_to(cup_recipe)
      end
    end

    context "with invalid params" do
      it "assigns the cup_recipe as @cup_recipe" do
        cup_recipe = CupRecipe.create! valid_attributes
        put :update, {:id => cup_recipe.to_param, :cup_recipe => invalid_attributes}, valid_session
        expect(assigns(:cup_recipe)).to eq(cup_recipe)
      end

      it "re-renders the 'edit' template" do
        cup_recipe = CupRecipe.create! valid_attributes
        put :update, {:id => cup_recipe.to_param, :cup_recipe => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested cup_recipe" do
      cup_recipe = CupRecipe.create! valid_attributes
      expect {
        delete :destroy, {:id => cup_recipe.to_param}, valid_session
      }.to change(CupRecipe, :count).by(-1)
    end

    it "redirects to the cup_recipes list" do
      cup_recipe = CupRecipe.create! valid_attributes
      delete :destroy, {:id => cup_recipe.to_param}, valid_session
      expect(response).to redirect_to(cup_recipes_url)
    end
  end

end
