# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { "Jane Doe" }
    sequence(:email) { |n| "janedoe#{n}@example.com" }
    phone { "+55 (91) 96755-8042" }
    cpf { CPF.generate(true) }
  end
end
