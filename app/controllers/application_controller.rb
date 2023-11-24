class ApplicationController < ActionController::Base

private

  def current_favorite
    favorite = Favorite.find_or_create_by(id: session[:favorite_id])
    session[:favorite_id] = favorite.id
    favorite
  end
end
