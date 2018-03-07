class DrugsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index,:show]

  def index
    if params[:query].present?
      response = DrugService.all_drugs(params[:query])
      # render json: response #affiche le JSON car pas de vue associée
      @drugs = []
      response.each { |drug| @drugs << { codeCIS: drug["codeCIS"], denomination: drug["denomination"]} }
      favorites = Favorite.where(user: current_user)
      @codes_cis = favorites.collect { |favorite| favorite.code_cis}

    end
  end

  def show
      @drug = DrugService.drug(params[:code_cis])
      # render json: response #affiche le JSON car pas de vue associée
  end


end
