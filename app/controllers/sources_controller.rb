class SourcesController < ApplicationController

  def show
    @source = Collection.find_source(params[:id].to_i)
  end

end  