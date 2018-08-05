# == Schema Information
#
# Table name: group_tasks
#
#  id         :bigint(8)        not null, primary key
#  content    :text(65535)      not null
#  image      :text(65535)
#  deadline   :datetime
#  complete   :boolean          default(FALSE), not null
#  boolean    :boolean          default(FALSE), not null
#  group_id   :bigint(8)        not null
#  task_id    :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "rails_helper"

RSpec.describe GroupTask, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
