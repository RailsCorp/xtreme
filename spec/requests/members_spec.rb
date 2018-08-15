require "rails_helper"

RSpec.describe MembersController, type: :request do
  let(:user) { create(:user) }
  before do
    log_in(user)
    @group = create(:group)
    @member = create(:member, group_id: @group.id, user_id: user.id, role: 0)
  end
  context "index #GET" do
    it "success" do
      get group_members_path(@group), as: :json
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
    end
  end
  context "create #POST" do
    it "success" do
      expect do
        post group_members_path(@group), params: { role: 0, user_id: user.id, group_id: @group.id }, as: :json
      end.to change(Member, :count).by(1)
      expect(response).to render_template(:create)
    end
  end
  context "update #PUT" do
    it "success" do
      expect do
        put group_member_path(@group, @member), params: { role: 1, user_id: user.id, group_id: @group.id }, as: :json
      end.to change { Member.find(@member.id).role }.from("regular").to("leader")
      expect(response).to have_http_status(200)
      expect(response).to render_template(:create)
    end
  end
  context "destroy #DELETE" do
    it "success" do
      expect do
        delete group_member_path(@group, @member), params: { id: @member.id }, as: :json
      end.to change(Member, :count).by(-1)
    end
  end
end
