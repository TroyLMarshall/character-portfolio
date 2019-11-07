# frozen_string_literal: true

FactoryBot.define do
  factory :character do
    name { Faker::Name.name }
    association :user, factory: :seeded_user
  end
end
