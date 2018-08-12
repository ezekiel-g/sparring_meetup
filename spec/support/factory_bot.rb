require 'factory_bot'

FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
    username 'username'
    age 23
    gender 'M'
    height 72
    weight 180
  end

  factory :sport do
    name 'name'
    description 'description'
  end
end
