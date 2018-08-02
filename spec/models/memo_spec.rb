# == Schema Information
#
# Table name: memos
#
#  id         :bigint(8)        not null, primary key
#  memo       :text(65535)      not null
#  task_id    :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "rails_helper"

RSpec.describe Memo, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
