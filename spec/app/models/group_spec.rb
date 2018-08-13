# == Schema Information
#
# Table name: groups
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  introduce  :text(65535)
#  image      :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "rails_helper"

RSpec.describe Group, type: :model do
  describe "Group" do
    context "association" do
      subject { create(:group) }
      it { is_expected.to have_many(:members) }
      it { is_expected.to have_many(:users).through(:members) }
    end
    context "validation" do
      subject { create(:group) }
      it { is_expected.to validate_presence_of(:name) }
    end
  end
end
