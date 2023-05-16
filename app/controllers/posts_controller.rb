class PostsController < ApplicationController
  before_action :set_location

  def new
    @post = @location.posts.build
  end

  def create
    @post = @location.posts.build(post_params)
    if @post.save
      redirect_to @location, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @post = @location.posts.find(params[:id])
    @post.destroy
    redirect_to @location, notice: 'Post was successfully destroyed.'
  end

  private

  def set_location
    @location = Location.find(params[:location_id])
  end

  def post_params
    params.require(:post).permit(:title, :description, :date)
  end
end
