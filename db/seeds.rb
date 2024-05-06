User.create!(name: "緋村剣心",
            email: "battousai@gmail.com",
            password: "00000000",
            password_confirmation: "00000000",
            admin: true,
            activated: true,
            activated_at: Time.zone.now
)
99.times do |n|
  name = Faker::Name.name
  email = "test#{n+1}@test.com"
  password = "password"
  User.create!( name:  name,
                email: email,
                password: password,
                password_confirmation: password,
                activated: true,
                activated_at: Time.zone.now    
              )
end