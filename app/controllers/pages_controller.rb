class PagesController < ApplicationController
  def home
  	@homes = Home.find(1)
    render :layout => 'custom'
  end
end
