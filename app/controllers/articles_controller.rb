class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    # render plain: params[:article].inspect
    # displaying the parameters for the article that are coming in from the form
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end


  # public methods (index, show, new, edit, create, update and destroy) placed before private methods

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
