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

require "rails_helper"

RSpec.describe Member, type: :model do
  describe "Member" do
    context "association" do
      subject { create(:member) }
      it { is_expected.to belong_to(:group) }
      it { is_expected.to belong_to(:user) }
    end
    context "validation" do
      subject { create(:member) }
      it { is_expected.to validate_presence_of(:group_id) }
      it { is_expected.to validate_presence_of(:user_id) }
      it { is_expected.to validate_presence_of(:role) }
    end
  end
end
