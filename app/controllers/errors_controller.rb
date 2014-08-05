class ErrorsController < ApplicationController

  def not_found
  	render status: 404, :layout => 'custom'
  end

  def unacceptable
  	render :status => 422, :layout => 'custom'
  end

  def internal_error
  	render :status => 500, :layout => 'custom'
  end
end
