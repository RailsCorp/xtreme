# == Schema Information
#
# Table name: coporations
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)      not null
#  image       :text(65535)
#  introduce   :text(65535)
#  owner       :string(255)      not null
#  address     :text(65535)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  established :datetime         not null
#

require 'rails_helper'

RSpec.describe Coporation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
