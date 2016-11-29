# Seed users
user = User.create!(email: "matthieu@admin.com",
                password: "foobar",
                password_confirmation: "foobar")

# Seed doctors
10.times do |n|
  user = User.create!(email: Faker::Internet.email,
                password: "foobar",
                password_confirmation: "foobar")

  Doctor.create!(phone_number: Faker::PhoneNumber.cell_phone,
                skype_username: Faker::Hipster.word,
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                address: Faker::Address.street_address,
                user_id: user.id)
end

# Seed pharmacies
10.times do |n|
  user = User.create!(email: Faker::Internet.email,
                password: "foobar",
                password_confirmation: "foobar")

  Pharmacy.create!(name: Faker::Hipster.word,
                   phone_number: Faker::PhoneNumber.cell_phone,
                   address: Faker::Address.street_address,
                   user_id: user.id)
end
