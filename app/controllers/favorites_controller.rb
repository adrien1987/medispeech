class FavoritesController < ApplicationController
  def put_in_favorite
    code_CIS = params[:code_cis]
    operation = "deleted"
    favorite = Favorite.where(code_cis: code_CIS, user: current_user).first
    if favorite.present?
      favorite.destroy
    else
      add(code_CIS)
      operation = "created"
    end
    flash[:notice] = "Favorite successfully #{operation}"
    redirect_back(fallback_location: root_path)
  end

  def add(code_CIS)
    favorite = Favorite.new
    favorite.code_cis = code_CIS
    favorite.user = current_user
    favorite.save
  end

  def now
    codeCIS = params[:code_cis]
    favorite = Favorite.where(code_cis: codeCIS, user: current_user).first
    if favorite.present?
      favorite.now = !favorite.now
      favorite.save
    end
  end

  private

  def favorite_params
    params.require(:favorite).permit(:drug_id)
  end



end
