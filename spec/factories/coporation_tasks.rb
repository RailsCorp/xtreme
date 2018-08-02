# == Schema Information
#
# Table name: coporation_tasks
#
#  id            :bigint(8)        not null, primary key
#  task_id       :bigint(8)        not null
#  coporation_id :bigint(8)        not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryBot.define do
  factory :coporation_task do
  end
end
