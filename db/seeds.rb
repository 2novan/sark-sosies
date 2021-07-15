Booking.destroy_all
Sosie.destroy_all
User.destroy_all

user = User.new({email: "contact@sark.com", name: "Sarkozy", biography: Faker::Marketing.buzzwords})
user.password = "123456"
user.save!
10.times do
  Sosie.create!({address: Faker::Address.full_address, celebrity: Faker::Name.name, name:  Faker::Name.name, description: Faker::Marketing.buzzwords, price_per_day: Faker::Number.number(digits: 4), user: User.first})
end

puts "done"
