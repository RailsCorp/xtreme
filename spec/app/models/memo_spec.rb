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
  describe "Memo" do
    context "association" do
      subject { create(:memo) }
      it { is_expected.to belong_to(:task) }
    end
    context "validation" do
      subject { create(:memo) }
      it { is_expected.to validate_presence_of(:memo) }
      it { is_expected.to validate_presence_of(:task_id) }
    end
  end
end
