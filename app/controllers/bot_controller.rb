class BotController < ApplicationController
  skip_before_action :authenticate_user!
  protect_from_forgery :except => :drug_info
  before_action :set_default_response_format

  def drug_info
    drug_name = params.fetch(:nlp, {})
                 .fetch(:entities, {})
                 .fetch(:drugs, [])
                 .first.try(:fetch, :value)

    if drug_name.present?
      @drugs = DrugService.all_drugs(drug_name).first(5)
    end
  end

  private

  def set_default_response_format
    request.format = :json
  end
end
