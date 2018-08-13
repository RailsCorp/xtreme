FactoryBot.define do
  factory :task do
    association :group, factory: :group
    title "test"
    content "test"
    is_finished false
    on_deadline "2025-12-31 15:00:00"
  end
end
