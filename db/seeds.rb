Review.destroy_all

50.times do |index|
  Review.create!(name: Faker::Name.first_name,
                        content: Faker::Lorem.sentence(word_count: 3),
                        rating: Faker::Number.within(range: 1..5))
end

p "Created #{Review.count} reviews"

Place.destroy_all

50.times do |index|
  Place.create!(country: Faker::Address.country,
                        city: Faker::Address.city)

end

p "Created #{Place.count} places"
