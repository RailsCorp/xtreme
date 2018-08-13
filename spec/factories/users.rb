FactoryBot.define do
  factory :user do
    email                 "test@test"
    password              "hogehoge"
    password_confirmation "hogehoge"
    sign_in_count         0

    after(:create) do |user|
      create(:member, user: user, group: create(:group))
    end
  end
end
