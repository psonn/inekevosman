class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :overview]

  def index
    @articles = Article.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 4)
  end

  def show
    render :layout => 'custom'
  end

  def new
    @article = current_user.articles.build
  end

  def edit
  end

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      redirect_to @article, notice: 'Article was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: 'Article was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_url
  end

  def overview
    @articles = Article.all.order("created_at DESC")#.paginate(:page => params[:page], :per_page => 4)
    render :layout => 'articles'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :body, :image, :remote_image_url, :image_cache, :summary, :slug)
    end
end
