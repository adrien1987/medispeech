class FavoritesController < ApplicationController
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

    redirect_back(fallback_location: root_path)
  end

  def now
    codeCIS = params[:code_cis]
    favorite = Favorite.where(code_cis: codeCIS, user: current_user).first
    if favorite.present?
      favorite.now = !favorite.now
      favorite.save
    end
    render json: {}
  end

  def interactions
    favorites = Favorite.where(now: true, user: current_user)
    codes_cis = favorites.collect { |favorite| favorite.code_cis}
    codes_cis_couples = codes_cis.combination(2).to_a unless codes_cis.size < 2
    @results = []
    codes_cis_couples.each do |couple|
      result = DrugService.interactions(couple.first, couple.last)
      @results << result unless result.empty?
    end
    render json: @results
  end

  private

  def favorite_params
    params.require(:favorite).permit(:drug_id)
  end



end
