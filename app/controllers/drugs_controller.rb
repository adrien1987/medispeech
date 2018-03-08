class DrugsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index,:show]

  def index
    if params[:query].present?
      response = DrugService.all_drugs(params[:query])
      # render json: response #affiche le JSON car pas de vue associée
      @drugs = []
      response.each { |drug| @drugs << { codeCIS: drug["codeCIS"], denomination: drug["denomination"]} }
      @drugs.map! { |drug| drug.merge DrugService.drug(drug[:codeCIS]) }
      favorites = Favorite.where(user: current_user)
      @codes_cis = favorites.collect { |favorite| favorite.code_cis} #array avec la liste des codes
    end
  end

  def show
      @reviews = Review.where(code_cis: params[:code_cis])
      @drug = DrugService.drug(params[:code_cis])

  end


end
