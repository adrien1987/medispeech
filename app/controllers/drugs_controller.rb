class DrugsController < ApplicationController

  def index
    if params[:query].present?
      response = DrugService.all_drugs(params[:query])
      # render json: response #affiche le JSON car pas de vue associée
      @drugs = []
      response.each { |drug| @drugs << { codeCIS: drug["codeCIS"], denomination: drug["denomination"]} }
      @drugs
    end
  end

  def show
      @drug = DrugService.drug(params[:code_cis])
      # render json: response #affiche le JSON car pas de vue associée

      # @drug = { codeCIS: drug["codeCIS"], denomination: drug["denomination"]}
  end


end
