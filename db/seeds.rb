class Seed

  def self.begin
    seed = Seed.new
    seed.generate_addresses
  end

  def generate_addresses
    20.times do |i|
      address = Address.create!(
        country: Faker::Address.country,
        city: Faker::Address.city
      )
      puts "I am #{i} and this is my review of #{address.city}, #{address.country}."
    end
  end
end

Seed.begin
