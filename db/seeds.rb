
Favorite.destroy_all


Review.destroy_all
puts "start of review seed"
review1 = Review.create!(efficacy: 4, description: "Très bon résultats", security: 3,
  code_cis: "62772966", user: jane, denomination: "PARACETAMOL EG 1 g, comprimé")
review2 = Review.create!(efficacy: 1, description: "Mauvais médoc", security: 1,
  code_cis: "66311831", user: luc, denomination: "ASPEGIC ENFANTS 250, poudre pour solution buvable en sachet-dose")
print "reviews : "
p Review.all
puts "End of review seed"

User.destroy_all
jane = User.create!(email: "rogue@gmail.com", password: "azerty", first_name: "Jane", last_name: "Colin", username: "alfa")
luc = User.create!(email: "hermione@gmail.com", password: "azerty", first_name: "Luc", last_name: "Dano", username: "romeo")
