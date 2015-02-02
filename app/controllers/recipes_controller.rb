class RecipesController <ApplicationController

  def index
    @active = 'alpha'
    @search = params[:search]
    if @search && @search.length > 0
      @recipes = Collection.search(@search)
    else
      @recipes = Collection.all  
    end
  end

  def alphabetical
    @active = 'alpha'
    @search = params[:search]
    if @search && @search.length > 0
      @recipes = Collection.search(@search)
    else
      @recipes = Collection.all  
    end
  end

  def by_category
    @active = 'category'
    @search = params[:search]
    if @search && @search.length > 0
      @recipes = Collection.search(@search)
    else
      @recipes = Collection.all  
    end
  end

  def by_source
    @active = 'source'
    @search = params[:search]
    if @search && @search.length > 0
      @recipes = Collection.search(@search)
    else
      @recipes = Collection.all  
    end
    @sources = Collection.sources
  end

  def show 
    @recipe = Collection.find(params[:id].to_i)
  end

end