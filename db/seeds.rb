
Favorite.destroy_all
Review.destroy_all
User.destroy_all

puts "start of user seed"
jane = User.create!(email: "jane@gmail.com", password: "azerty", first_name: "Jane", last_name: "Colin", username: "jane")
david = User.create!(email: "david@gmail.com", password: "azerty", first_name: "David", last_name: "Dano", username: "david")
adrien = User.create!(email: "adrien@gmail.com", password: "azerty", first_name: "Adrien", last_name: "Fidal", username: "adrien")
luc = User.create!(email: "luc@gmail.com", password: "azerty", first_name: "Luc", last_name: "Rodet", username: "luc01")
print "users : "
p User.all
puts "End of user seed"

puts "start of review seed"
review1 = Review.create!(efficacy: 5, description: "Très bons résultats", security: 3,
  code_cis: "62772966", user: jane, denomination: "PARACETAMOL EG 1 g, comprimé")
review2 = Review.create!(efficacy: 5, description: "Mauvais médoc", security: 1,
  code_cis: "62772966", user: luc, denomination: "PARACETAMOL EG 1 g, comprimé")
review3 = Review.create!(efficacy: 5, description: "Très efficace", security: 1,
  code_cis: "62772966", user: david, denomination: "PARACETAMOL EG 1 g, comprimé")
review4 = Review.create!(efficacy: 5, description: "Plus aucun maux de tête", security: 2,
  code_cis: "62772966", user: adrien, denomination: "PARACETAMOL EG 1 g, comprimé")

review5 = Review.create!(efficacy: 5, description: "Je me sens beaucoup mieux", security: 1,
  code_cis: "65693901", user: jane, denomination: "PRADAXA 75 mg, gélule")
review6 = Review.create!(efficacy: 1, description: "A retirer du marché, de l'argent perdu !", security: 1,
  code_cis: "65693901", user: luc, denomination: "PRADAXA 75 mg, gélule")
review7 = Review.create!(efficacy: 4, description: "A marché en seulement deux jours", security: 1,
  code_cis: "65693901", user: david, denomination: "PRADAXA 75 mg, gélule")
review8 = Review.create!(efficacy: 5, description: "Bien manger avant chaque prise pour éviter les désagréments", security: 3,
  code_cis: "65693901", user: adrien, denomination: "PRADAXA 75 mg, gélule")

review9 = Review.create!(efficacy: 4, description: "Je recommande ce produit", security: 3,
  code_cis: "66565609", user: jane, denomination: "ASPIRINE RICHARD 500 mg, comprimé")
review10 = Review.create!(efficacy: 5, description: "Super médoc", security: 1,
  code_cis: "66565609", user: luc, denomination: "ASPIRINE RICHARD 500 mg, comprimé")
review11 = Review.create!(efficacy: 3, description: "Ma rage de dents a diparu en 4 heures", security: 2,
  code_cis: "66565609", user: david, denomination: "ASPIRINE RICHARD 500 mg, comprimé")
review12 = Review.create!(efficacy: 5, description: "Plus de fièvre en seulement une heure", security: 1,
  code_cis: "66565609", user: adrien, denomination: "ASPIRINE RICHARD 500 mg, comprimé")

review13 = Review.create!(efficacy: 5, description: "J'ai retrouvé la joie de vivre", security: 5,
  code_cis: "65503782", user: jane, denomination: "SEROPLEX 20 mg, comprimé pelliculé sécable")
review14 = Review.create!(efficacy: 2, description: "Quelques effets indésirables", security: 2,
  code_cis: "65503782", user: luc, denomination: "SEROPLEX 20 mg, comprimé pelliculé sécable")
review15 = Review.create!(efficacy: 3, description: "Je n'ai plus de pensées suicidaires", security: 1,
  code_cis: "65503782", user: david, denomination: "SEROPLEX 20 mg, comprimé pelliculé sécable")
review16 = Review.create!(efficacy: 5, description: "J'ai complètement changé depuis que j'en prends. Je suis positif...", security: 1,
  code_cis: "65503782", user: adrien, denomination: "SEROPLEX 20 mg, comprimé pelliculé sécable")

print "reviews : "
p Review.all
puts "End of review seed"

puts "start of favorite seed"
favorite1 = Favorite.create!(code_cis: "62772966", user: jane, now: false)
favorite2 = Favorite.create!(code_cis: "62772966", user: luc, now: true)
favorite3 = Favorite.create!(code_cis: "62772966", user: david, now: false)
favorite4 = Favorite.create!(code_cis: "62772966", user: adrien, now: true)

favorite5 = Favorite.create!(code_cis: "65693901", user: jane, now: false)
favorite6 = Favorite.create!(code_cis: "65693901", user: luc, now: true)
favorite7 = Favorite.create!(code_cis: "65693901", user: david, now: true)
favorite8 = Favorite.create!(code_cis: "65693901", user: adrien, now: true)

favorite9 = Favorite.create!(code_cis: "66565609", user: jane, now: true)
favorite10 = Favorite.create!(code_cis: "66565609", user: david, now: true)
favorite11 = Favorite.create!(code_cis: "66565609", user: adrien, now: true)

favorite12 = Favorite.create!(code_cis: "65503782", user: jane, now: true)
favorite13 = Favorite.create!(code_cis: "65503782", user: luc, now: true)


print "favorites : "
p Favorite.all
puts "End of favorite seed"



