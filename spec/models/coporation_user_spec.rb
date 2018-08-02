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

require "rails_helper"

RSpec.describe CoporationUser, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
