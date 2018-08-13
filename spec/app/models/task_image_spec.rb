require "rails_helper"

RSpec.describe TaskImage, type: :model do
  describe "TaskImage" do
    context "association" do
      subject { create(:task_image) }
      it { is_expected.to belong_to(:task) }
    end
    context "validation" do
      subject { create(:task_image) }
      it { is_expected.to validate_presence_of(:image) }
    end
  end
end
