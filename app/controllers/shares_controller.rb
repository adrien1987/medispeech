class SharesController < ApplicationController
  def put_in_favorite
    codeCIS = params[:code_cis]
    favorite = Favorite.where(code_cis: codeCIS, user: current_user).first
    if favorite.present?
      favorite.destroy
    else
      favorite = Favorite.new
      favorite.code_cis = codeCIS
      favorite.user = current_user
      favorite.save
    end
    if params[:query].present?
      redirect_to root_path + "?query=#{params[:query]}"
    else
      redirect_to profile_path
    end
  end

  private

  def favorite_params
    params.require(:favorite).permit(:drug_id)
  end
end
