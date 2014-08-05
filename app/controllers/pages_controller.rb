class PagesController < ApplicationController
  def home
    render :layout => 'custom'
  end

  def about 
    render :layout => 'custom'
  end 
end
