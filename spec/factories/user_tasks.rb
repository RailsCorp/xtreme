# == Schema Information
#
# Table name: user_tasks
#
#  id         :bigint(8)        not null, primary key
#  content    :text(65535)      not null
#  image      :text(65535)
#  deadline   :datetime
#  complete   :boolean          default(FALSE), not null
#  user_id    :bigint(8)        not null
#  task_id    :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :user_task do
    content "MyText"
    image "MyText"
    deadline "2018-07-23 19:51:26"
    complete false
  end
end
