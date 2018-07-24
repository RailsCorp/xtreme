# == Schema Information
#
# Table name: members
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)      not null
#  user_id    :bigint(8)        not null
#  group_id   :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Member, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
