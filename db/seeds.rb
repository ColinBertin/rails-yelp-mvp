puts "Cleaning the db..."
Restaurant.destroy_all

puts "Creating 30 restaurants..."
30.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: Restaurant::CATEGORIES.sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
end
puts "... created #{Restaurant.count} restaurants."
