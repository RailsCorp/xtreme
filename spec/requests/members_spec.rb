require "rails_helper"

RSpec.describe "Members", type: :request do
  before do
    @group = create(:group)
    @member = create(:member, group_id: @group.id)
  end
  context "index #GET" do
    it "success" do
      get group_members_path(@group), as: :json
      expect(response).to have_http_status(200)
    end
  end
end
