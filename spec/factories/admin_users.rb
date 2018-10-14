FactoryBot.define do
  factory :admin_user do
    email                 "test@test"
    password              "hogehoge"
    password_confirmation "hogehoge"
    sign_in_count         0
  end
end
