class ArticlesController < ApplicationController
  def new
  end

  def create
    # render plain: params[:article].inspect
    # displaying the parameters for the article that are coming in from the form
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
