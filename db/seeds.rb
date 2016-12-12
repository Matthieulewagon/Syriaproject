# Seed users
# user = User.create!(email: "matthieu@admin.com",
#                 password: "foobar",
#                 password_confirmation: "foobar",
#                 first_name: Faker::Name.first_name,
#                 last_name: Faker::Name.last_name,
#                 username: Faker::Name.first_name,
                # )

# # Seed doctors
# 10.times do |n|
#   # user = User.create!(email: Faker::Internet.email,
#   #               password: "foobar",
#   #               password_confirmation: "foobar")

#   User.create!(phone_number: Faker::PhoneNumber.cell_phone,
#                 skype_username: Faker::Hipster.word,
#                 first_name: Faker::Name.first_name,
#                 last_name: Faker::Name.last_name,
#                 address: Faker::Address.street_address,
#                 email: Faker::Internet.email,
#                 password: "foobar",
#                 password_confirmation: "foobar",
#                 username: Faker::Name.first_name,
#                 role: 'doctor')
# end

  User.where(role: 'doctor').destroy_all
  User.create!(phone_number: Faker::PhoneNumber.cell_phone,
                skype_username: Faker::Hipster.word,
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                address: 'Hawash, Syria',
                email: Faker::Internet.email,
                password: "foobar",
                password_confirmation: "foobar",
                username: Faker::Name.first_name,
                specialisation: 'Dentist',
                role: 'doctor')

  User.create!(phone_number: Faker::PhoneNumber.cell_phone,
                skype_username: Faker::Hipster.word,
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                address: 'Palmyra, Syria',
                email: Faker::Internet.email,
                password: "foobar",
                password_confirmation: "foobar",
                username: Faker::Name.first_name,
                specialisation: 'ENT Specialist',
                role: 'doctor')

  User.create!(phone_number: Faker::PhoneNumber.cell_phone,
                skype_username: Faker::Hipster.word,
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                address: 'Homs, Syria',
                email: Faker::Internet.email,
                password: "foobar",
                password_confirmation: "foobar",
                username: Faker::Name.first_name,
                specialisation: 'Internal Medicine Specialist',
                role: 'doctor')


  User.create!(phone_number: Faker::PhoneNumber.cell_phone,
                skype_username: Faker::Hipster.word,
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                address: 'Talkalakh, Syria',
                email: Faker::Internet.email,
                password: "foobar",
                password_confirmation: "foobar",
                username: Faker::Name.first_name,
                specialisation: 'Surgeon',
                role: 'doctor')





# Seed pharmacies
# 10.times do |n|
#   # user = User.create!(email: Faker::Internet.email,
#   #               password: "foobar",
#   #               password_confirmation: "foobar")

#   Pharmacy.create!(name: Faker::Hipster.word,
#                    phone_number: Faker::PhoneNumber.cell_phone,
#                    address: Faker::Address.street_address,
#                    user_id: User.all.sample.id)
# end
=begin
  User.create!(phone_number: ,
                skype_username: ,
                first_name: ,
                last_name: ,
                address: ,
                email: ,
                password: "foobar",
                password_confirmation: "foobar",
                username: .first_name,
                role: 'doctor'

  User.create!(phone_number: ,
                skype_username: ,
                first_name: ,
                last_name: ,
                address: ,
                email: ,
                password: "foobar",
                password_confirmation: "foobar",
                username: .first_name,
                role: 'doctor'

  User.create!(phone_number: ,
                skype_username: ,
                first_name: ,
                last_name: ,
                address: ,
                email: ,
                password: "foobar",
                password_confirmation: "foobar",
                username: ,
                role: 'doctor'

  User.create!(phone_number: ,
                skype_username: ,
                first_name: ,
                last_name: ,
                address: ,
                email: ,
                password: "foobar",
                password_confirmation: "foobar",
                username: ,
                role: 'doctor'

  User.create!(phone_number: ,
                skype_username: ,
                first_name: ,
                last_name: ,
                address: ,
                email: ,
                password: "foobar",
                password_confirmation: "foobar",
                username: ,
                role: 'doctor'

  User.create!(phone_number: ,
                skype_username: ,
                first_name: ,
                last_name: ,
                address: ,
                email: ,
                password: "foobar",
                password_confirmation: "foobar",
                username: ,
                role: 'doctor'

  User.create!(phone_number: ,
                skype_username: ,
                first_name: ,
                last_name: ,
                address: ,
                email: ,
                password: "foobar",
                password_confirmation: "foobar",
                username: ,
                role: 'doctor'

  User.create!(phone_number: ,
                skype_username: ,
                first_name: ,
                last_name: ,
                address: ,
                email: ,
                password: "foobar",
                password_confirmation: "foobar",
                username: ,
                role: 'doctor'

=end
