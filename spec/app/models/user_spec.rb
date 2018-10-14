require "rails_helper"

RSpec.describe User, type: :model do
  describe "User" do
    context "association" do
      subject { create(:user) }
      it { is_expected.to have_many(:members) }
      it { is_expected.to have_many(:groups).through(:members) }
      it { is_expected.to have_many(:comments) }
      it { is_expected.to have_one(:user_infomation) }
      it { is_expected.to have_one(:user_admin) }
      it { is_expected.to have_one(:admin_user).through(:user_admin) }
    end
    context "validation" do
      subject { create(:user) }
      it { is_expected.to validate_presence_of(:email) }
      it { is_expected.to validate_presence_of(:password) }
    end
  end
end
