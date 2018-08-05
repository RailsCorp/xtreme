# == Schema Information
#
# Table name: coporation_users
#
#  id            :bigint(8)        not null, primary key
#  user_id       :bigint(8)        not null
#  coporation_id :bigint(8)        not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryBot.define do
  factory :coporation_user do
  end
end
