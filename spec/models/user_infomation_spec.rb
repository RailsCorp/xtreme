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

require 'rails_helper'

RSpec.describe UserInfomation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
