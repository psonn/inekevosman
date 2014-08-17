class OverzichtsController < ApplicationController
  before_action :set_overzicht, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @overzichts = Overzicht.all
  end

  def show
  end

  def new
    @overzicht = Overzicht.new
  end

  def edit
  end

  def create
    @overzicht = Overzicht.new(overzicht_params)
      if @overzicht.save
        redirect_to @overzicht, notice: 'Overzicht was successfully created.' 
      else
        render action: 'new' 
      end
  end

  def update
      if @overzicht.update(overzicht_params)
        redirect_to @overzicht, notice: 'Overzicht was successfully updated.'
      else
        render action: 'edit' 
      end
  end

  def destroy
    @overzicht.destroy
    redirect_to overzichts_url 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_overzicht
      @overzicht = Overzicht.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def overzicht_params
      params.require(:overzicht).permit(:title, :body)
    end
end
