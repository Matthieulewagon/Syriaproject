#

 User.where(role:'doctor').destroy_all

  User.create!(phone_number: '011-5426498',
                skype_username: 'elias.dropy11',
                first_name: 'Elias',
                last_name: 'Droopy',
                address: 'Damascus, Syria',
                email: 'elias.dropy@hotmail.com',
                password: "12345",
                password_confirmation: "12345",
                username: 'Elias',
                specialisation: 'Dentist',
                role: 'doctor')
  User.create!(phone_number: '011 3333065',
                skype_username: 'elen10',
                first_name: 'Elen',
                last_name: 'Bitar',
                address: 'Bagdad street, Damascus, Syria',
                email: 'elen.fayez@gmail.com',
                password: "12345",
                password_confirmation: "12345",
                username: 'Alan10',
                specialisation: 'Gynecologist',
                role: 'doctor')
  User.create!(phone_number: '0116472590',
                skype_username: 'Aref',
                first_name: 'Hassan',
                last_name: 'Abdul',
                address: 'Aleppo, Alsabil',
                email: 'hassan.aref@yahoo.com',
                password: "12345",
                password_confirmation: "12345",
                username: 'Aref',
                specialisation: 'Dentist',
                role: 'doctor')
  User.create!(phone_number: '0115141349',
                skype_username: 'diop981',
                first_name: 'Hatem',
                last_name: 'Diop',
                address: 'Damascus, Barza,',
                email: 'hdiop@hotmail.com',
                password: "12345",
                password_confirmation: "12345",
                username: Faker::Name.first_name,
                specialisation: 'Cardiologist',
                role: 'doctor')
  User.create!(phone_number: '0113126261',
                skype_username: 'aldairi12',
                first_name: 'Khalid',
                last_name: 'Al-Dairi',
                address: 'Damascus, Mokhayyam,',
                email: 'khalid.dairi@hotmail.com',
                password: "12345",
                password_confirmation: "12345",
                username: Faker::Name.first_name,
                specialisation: 'ENT Specialist',
                role: 'doctor')
  User.create!(phone_number: '0213126261',
                skype_username: 'aldairi12',
                first_name: 'Riad',
                last_name: 'Aladdin',
                address: 'Aleppo new round',
                email: 'aladdinriad@ymail.com',
                password: "12345",
                password_confirmation: "12345",
                username: 'Aladdin',
                specialisation: 'Plastic Surgeon',
                role:'doctor')
  User.create!(phone_number: '0114415450',
                skype_username: 'jacob.rani12',
                first_name: 'Rani',
                last_name: 'Jacob',
                address: 'Damascus, next to the central pharmacy',
                email: 'Jacob@hotmail.com.com',
                password: "12345",
                password_confirmation: "12345",
                username: 'jacob970',
                specialisation: 'Plastic Surgeon',
                role: 'doctor')
  User.create!(phone_number: '0115111220',
                skype_username: 'samer.Maloula80',
                first_name: 'Samer',
                last_name: 'Maloula',
                address: 'Damascus, housing Przh- Almojtahd',
                email: 'maloula.samer@gmail.com',
                password: "12345",
                password_confirmation: "12345",
                username: 'maloula',
                specialisation: 'Ophthalmologist',
                role: 'doctor')
  User.create!(phone_number: '0114444365',
                skype_username: 'Yazigi.talal',
                first_name: 'Talal',
                last_name: 'Yazigi',
                address: 'Damascus, Revolution tunnel',
                email: 'd-yazigi@scs-net.org',
                password: "12345",
                password_confirmation: "12345",
                username: 'Yazigi',
                specialisation: 'Cardiologist',
                role: 'doctor')
 User.create!(phone_number: '0115111056',
                skype_username: 'Alaa79',
                first_name: 'Alaa',
                last_name: 'Ahmed',
                address: 'Damascus - Barza',
                email: 'alaa.ahmed@hotmail.com',
                password: "12345",
                password_confirmation: "12345",
                username: 'Alahmed',
                specialisation: 'ENT Specialist',
                role: 'doctor')
  User.create!(phone_number: '114459944',
                skype_username: 'Kaplan80',
                first_name: 'Imad',
                last_name: 'Kaplan',
                address: 'Damascus - Shahbandar',
                email: 'Kaplan.imad@gmail.com',
                password: "12345",
                password_confirmation: "12345",
                username: 'Kaplan',
                specialisation: 'Gynecology',
                role: 'doctor')
  User.create!(phone_number: '0113328555',
                skype_username: 'Ammar456',
                first_name: 'Ammar',
                last_name: 'al-Jihad',
                address: 'Damascus, white bridge',
                email: 'Jihad.Ammar@ymail.com',
                password: "12345",
                password_confirmation: "12345",
                username: 'Ammar',
                specialisation: 'Ophthalmologist',
                role: 'doctor')
  User.create!(phone_number: '0115645935',
                skype_username: 'mtanios.aziz',
                first_name: 'Aziz',
                last_name: 'Mtanios',
                address: 'Damascus, Jaramana',
                email: 'Mtanios@gmail.com',
                password: "12345",
                password_confirmation: "12345",
                username: 'Mtanios',
                specialisation: 'Dentist',
                role: 'doctor')
   User.create!(phone_number: '0115645945',
                skype_username: 'majid.bari',
                first_name: 'majid',
                last_name: 'bari',
                address: 'Aleppo, Alsabil',
                email: 'majid@gmail.com',
                password: "12345",
                password_confirmation: "12345",
                username: 'majid',
                specialisation: 'Endocrinologist',
                role: 'doctor')
   User.create!(phone_number: '0115645975',
                skype_username: 'abu.tareq',
                first_name: 'abu',
                last_name: 'tareq',
                address: 'Aleppo, Alsabil',
                email: 'abu@gmail.com',
                password: "12345",
                password_confirmation: "12345",
                username: 'abu',
                specialisation: 'Endocrinologist',
                role: 'doctor')

# Seed pharmacies
# 10.times do |n|
#   # user = User.create!(email: Faker::Internet.email,
#   #               password: "12345",
#   #               password_confirmation: "12345")

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
                password: "12345",
                password_confirmation: "12345",
                username: .first_name,
                specialisation: 'doctor'

  User.create!(phone_number: ,
                skype_username: ,
                first_name: ,
                last_name: ,
                address: ,
                email: ,
                password: "12345",
                password_confirmation: "12345",
                username: .first_name,
                specialisation: 'doctor'

  User.create!(phone_number: ,
                skype_username: ,
                first_name: ,
                last_name: ,
                address: ,
                email: ,
                password: "foobar",
                password_confirmation: "12345",
                username: ,
                specialisation: 'doctor'

  User.create!(phone_number: ,
                skype_username: ,
                first_name: ,
                last_name: ,
                address: ,
                email: ,
                password: "foobar",
                password_confirmation: "12345",
                username: ,
                specialisation: 'doctor'

  User.create!(phone_number: ,
                skype_username: ,
                first_name: ,
                last_name: ,
                address: ,
                email: ,
                password: "foobar",
                password_confirmation: "12345",
                username: ,
                specialisation: 'doctor'

  User.create!(phone_number: ,
                skype_username: ,
                first_name: ,
                last_name: ,
                address: ,
                email: ,
                password: "foobar",
                password_confirmation: "12345",
                username: ,
                specialisation: 'doctor'

  User.create!(phone_number: ,
                skype_username: ,
                first_name: ,
                last_name: ,
                address: ,
                email: ,
                password: "foobar",
                password_confirmation: "12345",
                username: ,
                specialisation: 'doctor'

  User.create!(phone_number: ,
                skype_username: ,
                first_name: ,
                last_name: ,
                address: ,
                email: ,
                password: "foobar",
                password_confirmation: "12345",
                username: ,
                specialisation: 'doctor'

=end
