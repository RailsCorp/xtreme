require "rails_helper"

RSpec.describe AdminUser, type: :model do
  describe "AdminUser" do
    context "association" do
      subject { create(:admin_user) }
      it { is_expected.to have_one(:user_admin) }
      it { is_expected.to have_one(:user).through(:user_admin) }
    end
    context "validation" do
      subject { create(:admin_user) }
      it { is_expected.to validate_presence_of(:email) }
      it { is_expected.to validate_presence_of(:password) }
    end
  end
end
