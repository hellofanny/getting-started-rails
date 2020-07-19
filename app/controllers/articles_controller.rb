class ArticlesController < ApplicationController
  def new
  end

  def create
    render plain: params[:article].inspect
    # displaying the parameters for the article that are coming in from the form
  end
end
