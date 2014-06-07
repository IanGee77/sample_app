namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Example User",
                 email: "example@rails.org",
                 password: "password",
                 password_confirmation: "password",
                 admin: true)
    99.times do |n|
      name = Faker::Name.name
      email = "#{n+1}@rails.org"
      password = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end