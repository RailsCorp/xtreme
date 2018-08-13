require "rails_helper"

RSpec.describe Task, type: :model do
  describe "Task" do
    context "association" do
      subject { create(:task) }
      it { is_expected.to have_many(:comments) }
      it { is_expected.to have_many(:memos) }
      it { is_expected.to belong_to(:group) }
    end
    context "validation" do
      subject { create(:task) }
      it { is_expected.to validate_presence_of(:title) }
    end
  end
end
