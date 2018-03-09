
jane = User.create!(email: "rogue@gmail.com", password: "azerty", first_name: "Jane", last_name: "Colin", username: "alfa")
luc = User.create!(email: "hermione@gmail.com", password: "azerty", first_name: "Luc", last_name: "Dano", username: "romeo")


Review.destroy_all
puts "start of review seed"
review1 = Review.create!(efficacy: 4, description: "La meilleure expérience de ma vie", security: 3, code_cis: "62772966", user: jane)
review2 = Review.create!(efficacy: 1, description: "ta grosse mere la pute", security: 1, code_cis: "66311831", user: luc)
print "reviews : "
p Review.all
puts "End of review seed"
