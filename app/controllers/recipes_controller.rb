class RecipesController <ApplicationController

  def index
    @active = 'alpha'
    @recipes = Recipe.order(:title) 
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def alphabetical
    @active = 'alpha'
    @recipes = Recipe.all 
  end

  def by_source
    @active = 'source'
    @recipes = Recipe.all 
  end

  def by_category
    @active = 'category'
    @recipes = Recipe.all 
  end

  def new
    @recipe = Recipe.new
  end

  # instance variables not necessary
  def create
    @recipe = Recipe.new(recipe_params)
    # if @recipe is valid, it returns a truthy value
    if @recipe.save
      flash[:success] = "Recipe Created."
      redirect_to recipes_path
    else
      render 'new'
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(recipe_params)
      flash[:success] = "Recipe updated."
      redirect_to recipe_path(@recipe.id)
    else
      render 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:success] = "Recipe Deleted."
    redirect_to recipes_path
  end



  private

# hash of attributes
# method below is like a filter. 
# Leave things out of 'permit' that users should not have access to - eg, 'admin status' 

    def recipe_params
      params.require(:recipe).permit(:title, :cooking_time, :category, :notes, :image)
    end

end

  # -- old --

  # def index
  #   @active = 'alpha'
  #   @search = params[:search]
  #   if @search && @search.length > 0
  #     @recipes = Collection.search(@search)
  #   else
  #     @recipes = Collection.all  
  #   end
  # end

  # def alphabetical
  #   @active = 'alpha'
  #   @search = params[:search]
  #   if @search && @search.length > 0
  #     @recipes = Collection.search(@search)
  #   else
  #     @recipes = Collection.all  
  #   end
  # end

  # def by_category
  #   @active = 'category'
  #   @search = params[:search]
  #   if @search && @search.length > 0
  #     @recipes = Collection.search(@search)
  #   else
  #     @recipes = Collection.all  
  #   end
  # end

  # def by_source
  #   @active = 'source'
  #   @search = params[:search]
  #   if @search && @search.length > 0
  #     @recipes = Collection.search(@search)
  #   else
  #     @recipes = Collection.all  
  #   end
  #   @sources = Collection.sources
  # end

  # def show 
  #   @recipe = Collection.find(params[:id].to_i)
  # end
