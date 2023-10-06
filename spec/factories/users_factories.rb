FactoryBot.define do
  factory :user do
    name { "Jane Doe" }
    sequence(:email) { |n| "janedoe#{n}@example.com" }
    phone { "99999999999" }
    sequence(:cpf) { |n| "633.627.860-#{n}0" }
  end
end
