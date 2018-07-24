# == Schema Information
#
# Table name: comments
#
#  id         :bigint(8)        not null, primary key
#  text       :text(65535)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)        not null
#  task_id    :bigint(8)        not null
#

FactoryBot.define do
  factory :comment do
    text "MyText"
  end
end
