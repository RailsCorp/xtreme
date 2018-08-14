FactoryBot.define do
  factory :user_admin do
    association :user, factory: :user
    association :admin_user, factory: :admin_user
  end
end
