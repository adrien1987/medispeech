require 'rest-client'

class DrugService
  URL = 'https://open-medicaments.fr/api/v1/medicaments'

  def self.all_drugs(term)
    response = RestClient.get(URL + '?query=' + term)
    JSON.parse(response)
  end

  def self.drug(code_cis)
    response = RestClient.get(URL + "/" + code_cis)
    JSON.parse(response)
  end

end
