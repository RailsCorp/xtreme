# == Schema Information
#
# Table name: user_infomations
#
#  id         :bigint(8)        not null, primary key
#  role       :string(255)
#  department :string(255)
#  image      :text(65535)
#  user_id    :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserInfomation < ApplicationRecord
end
