# deps
require 'faker'

# dev user
user_1 = User.find_by_email('dev1@bark.com').nil? ? User.create(email: 'dev1@bark.com', password: 'developer') : User.find_by_email('dev1@bark.com')
user_2 = User.find_by_email('dev2@bark.com').nil? ? User.create(email: 'dev2@bark.com', password: 'developer') : User.find_by_email('dev2@bark.com')

# sample restaurants
5.times do
    Restaurant.create(name: Faker::Restaurant.name, user_id: user_1.id)
    Restaurant.create(name: Faker::Restaurant.name, user_id: user_2.id)
end

# sample reviews
Restaurant.all.each do |r|
    5.times do
        Review.create(rating: [1,2,3,4,5].sample, comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: r.id)
    end
end