class CupRecipesController < InheritedResources::Base

  private

    def cup_recipe_params
      params.require(:cup_recipe).permit(:cup_id, :recipe_id)
    end
end

