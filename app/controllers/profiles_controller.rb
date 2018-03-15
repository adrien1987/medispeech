class ProfilesController < ApplicationController
  def show
    @user = current_user
    @favorites = @user.favorites
    @codes_cis = @favorites.collect { |favorite| favorite.code_cis }
    unformated_drugs = []
    @favorites.each { |favorite| unformated_drugs << DrugService.drug(favorite.code_cis) }
    @drugs = []
    unformated_drugs.each { |drug| @drugs << { codeCIS: drug["codeCIS"], denomination: drug["denomination"]} }
    @reviews = Review.where(user: @user)
    @interactions = current_user.interactions
  end
end
