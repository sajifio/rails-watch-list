class BookmarksController < ApplicationController
  def new
    @movie = Movie.find(params[:movie_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(review_params)
    @movie = Movie.find(params[:movie_id])
    @bookmark.movie = @movie
    @bookmark.save
    redirect_to movie_path(@movie)
  end

  def destroy
  end

  private

  def review_params
    params.require(:bookmark).permit(:comment)
  end
end
