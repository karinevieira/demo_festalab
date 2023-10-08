FactoryBot.define do
  factory :user do
    name { "Jane Doe" }
    sequence(:email) { |n| "janedoe#{n}@example.com" }
    cpf { CPF.generate(true) }
  end
end
