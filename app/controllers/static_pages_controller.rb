class StaticPagesController < ApplicationController

  def home
  end

  def about
    @active = 'about'
  end  

end

