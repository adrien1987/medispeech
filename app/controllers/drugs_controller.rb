class DrugsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index,:show]

  def index
    if params[:query].present?
      @response = DrugService.all_drugs(params[:query])
      @drugs = []
      @response.each { |drug| @drugs << { codeCIS: drug["codeCIS"], denomination: drug["denomination"]} }
      favorites = Favorite.where(user: current_user)
      @codes_cis = favorites.collect { |favorite| favorite.code_cis} #array avec la liste des codes
    else
      @reviews = Review.all.last(10).reverse
    end
  end

  def show
      @reviews = Review.where(code_cis: params[:code_cis])
      @drug = DrugService.drug(params[:code_cis])
  end


end
