# == Schema Information
#
# Table name: coporation_groups
#
#  id            :bigint(8)        not null, primary key
#  group_id      :bigint(8)        not null
#  coporation_id :bigint(8)        not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe CoporationGroup, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
