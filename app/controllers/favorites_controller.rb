class FavoritesController < ApplicationController

  def create
    favorite = current_user.favorites.create(twtext_id: params[:twtext_id])
    redirect_to twtexts_url, notice: "#{favorite.twtext.user.name}さんのつぶやきをお気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(twtext_id: params[:twtext_id]).destroy
    redirect_to twtexts_url, notice: "#{favorite.twtext.user.name}さんのつぶやきをお気に入り解除しました"
  end

end
