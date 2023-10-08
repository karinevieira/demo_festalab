FactoryBot.define do
  factory :user do
    name { "Jane Doe" }
    sequence(:email) { |n| "janedoe#{n}@example.com" }
    phone { "99999999999" }
    cpf { CPF.generate(true) }
  end
end
