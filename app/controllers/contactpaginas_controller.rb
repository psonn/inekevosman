class ContactpaginasController < ApplicationController
  before_action :set_contactpagina, only: [:show, :edit, :update, :destroy]

  # GET /contactpaginas
  # GET /contactpaginas.json
  def index
    @contactpaginas = Contactpagina.all
  end

  # GET /contactpaginas/1
  # GET /contactpaginas/1.json
  def show
  end

  # GET /contactpaginas/new
  def new
    @contactpagina = Contactpagina.new
  end

  # GET /contactpaginas/1/edit
  def edit
  end

  # POST /contactpaginas
  # POST /contactpaginas.json
  def create
    @contactpagina = Contactpagina.new(contactpagina_params)

    respond_to do |format|
      if @contactpagina.save
        format.html { redirect_to @contactpagina, notice: 'Contactpagina was successfully created.' }
        format.json { render action: 'show', status: :created, location: @contactpagina }
      else
        format.html { render action: 'new' }
        format.json { render json: @contactpagina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contactpaginas/1
  # PATCH/PUT /contactpaginas/1.json
  def update
    respond_to do |format|
      if @contactpagina.update(contactpagina_params)
        format.html { redirect_to @contactpagina, notice: 'Contactpagina was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @contactpagina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contactpaginas/1
  # DELETE /contactpaginas/1.json
  def destroy
    @contactpagina.destroy
    respond_to do |format|
      format.html { redirect_to contactpaginas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contactpagina
      @contactpagina = Contactpagina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contactpagina_params
      params.require(:contactpagina).permit(:title, :body)
    end
end
