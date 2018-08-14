FactoryBot.define do
  factory :member do
    role 0
    association :user, factory: :user
    association :group, factory: :group
  end
end
