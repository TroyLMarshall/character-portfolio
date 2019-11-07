# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    id { -1 }
    email { Faker::Internet.safe_email }
    password { "password" }
  end

  factory :seeded_user, class: "User" do
    id { 1 }
    email { "test@example.com" }
    password { "some_long_password" }
  end
end
