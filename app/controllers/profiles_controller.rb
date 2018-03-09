class ProfilesController < ApplicationController
  def show
    @user = current_user

    @codes_cis = @user.favorites.collect { |favorite| favorite.code_cis }
    unformated_drugs = []
    @user.favorites.each { |favorite| unformated_drugs << DrugService.drug(favorite.code_cis) }
    @drugs = []
    unformated_drugs.each { |drug| @drugs << { codeCIS: drug["codeCIS"], denomination: drug["denomination"]} }
    @reviews = Review.where(user: @user)

  end
end
