# == Schema Information
#
# Table name: comments
#
#  id         :bigint(8)        not null, primary key
#  text       :text(65535)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)        not null
#  task_id    :bigint(8)        not null
#

require "rails_helper"

RSpec.describe Comment, type: :model do
  describe "Comment" do
    context "association" do
      subject { create(:comment) }
      it { is_expected.to belong_to(:user) }
      it { is_expected.to belong_to(:task) }
    end
    context "validation" do
      subject { create(:comment) }
      it { is_expected.to validate_presence_of(:text) }
      it { is_expected.to validate_presence_of(:user_id) }
      it { is_expected.to validate_presence_of(:task_id) }
    end
  end
end
