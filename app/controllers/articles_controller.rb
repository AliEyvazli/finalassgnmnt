class ArticlesController < ApplicationController
  before_action :set_location

  def new
    @article = @location.articles.build
  end

  def create
    @article = @location.articles.build(article_params)
    if @article.save
      redirect_to @location, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @article = @location.articles.find(params[:id])
    if @article
      @article.destroy
      redirect_to @location, notice: 'Article was successfully destroyed.'
    else
      redirect_to @location, notice: 'Article not found.'
    end
  end
  

  private

  def set_location
    @location = Location.find(params[:location_id])
  end

  def article_params
    params.require(:article).permit(:title, :description, :date)
  end
end
