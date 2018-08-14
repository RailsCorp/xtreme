require "rails_helper"

RSpec.describe UserAdmin, type: :model do
  describe "UserAdmin" do
    context "association" do
      subject { create(:user_admin) }
      it { is_expected.to belong_to(:admin_user) }
      it { is_expected.to belong_to(:user) }
    end
    context "validation" do
      subject { create(:user_admin) }
      it { is_expected.to validate_presence_of(:admin_user_id) }
      it { is_expected.to validate_presence_of(:user_id) }
    end
  end
end
