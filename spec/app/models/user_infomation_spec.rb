# == Schema Information
#
# Table name: user_infomations
#
#  id         :bigint(8)        not null, primary key
#  role       :string(255)
#  department :string(255)
#  image      :text(65535)
#  user_id    :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "rails_helper"

RSpec.describe UserInfomation, type: :model do
  describe "UserInfomation" do
    context "association" do
      subject { create(:user_infomation) }
      it { is_expected.to belong_to(:user) }
    end
    context "validation" do
      subject { create(:user_infomation) }
      it { is_expected.to validate_presence_of(:name) }
      it { is_expected.to validate_presence_of(:user_id) }
    end
  end
end
