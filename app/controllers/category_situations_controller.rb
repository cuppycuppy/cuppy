class CategorySituationsController < InheritedResources::Base

  private

    def category_situation_params
      params.require(:category_situation).permit(:category, :situation_id)
    end
end

