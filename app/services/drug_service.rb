require 'rest-client'

class DrugService
  URL = 'https://open-medicaments.fr/api/v1/medicaments'

  def self.all_drugs(term)
    response = RestClient.get(URL + '?query=' + I18n.transliterate(term))
    JSON.parse(response)
  end

  def self.drug(code_cis)
    response = RestClient.get(URL + "/" + code_cis)
    JSON.parse(response)
  end

  def self.getAverageReviewsNoteForDrug(code_cis, type_of_grade)

    sum = 0
    reviews = getReviewsForDrug(code_cis)
    if type_of_grade == "efficacy"
      reviews.each { |review| sum = sum + review.efficacy }
    else
      reviews.each { |review| sum = sum + review.security }
    end
    sum = reviews.size == 0 ? 0 : sum / reviews.size
  end

  def self.getReviewSecurityNotesForDrug(code_cis, grade_value)
    reviews = getReviewsForDrug(code_cis)
    note = reviews.size == 0 ? [0, 0] : securityGradesPourcentage(grade_value, reviews)
  end

  def self.securityGradesPourcentage(grade_value, reviews)
    number_of_grade = 0
    reviews.each do |review|
      number_of_grade = number_of_grade + 1 if review.security == grade_value
    end
    tab = [number_of_grade, (100 * number_of_grade / reviews.size)]
  end

  def self.getReviewsForDrug(code_cis)
    Review.where(code_cis: code_cis)
  end


end
