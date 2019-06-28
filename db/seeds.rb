2.times do |n|
  name = Faker::Name.name
  email = Faker::Internet.email
  password = "password"
  User.create!(
    name: name,
    email: email,
    password: password,
    password_confirmation: password
  )
end

Label.create!([
                      {label: "ラベル1"},
                      {label: "ラベル2"},
                   ])
