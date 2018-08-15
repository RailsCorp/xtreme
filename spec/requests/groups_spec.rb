require "rails_helper"

RSpec.describe GroupsController, type: :request do
  let(:user) { create(:user) }
  let(:image) { Rack::Test::UploadedFile.new(File.join(Rails.root, "public/images/img_0813.png")) }
  before do
    log_in(user)
  end
  context "index #GET" do
    it "success" do
      get groups_path, as: :json
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
    end
  end
  context "show #GET" do
    it "success" do
      @group = create(:group)
      get group_path(@group), as: :json
      expect(response).to have_http_status(200)
      expect(response).to render_template(:show)
    end
  end
  context "create #POST" do
    it "success" do
      @group = create(:group)
      expect do
        post groups_path, params: { name: "test", introduce: "こんにちは", image: image }, as: :json
      end.to change(Group, :count).by(1)
      expect(response).to render_template(:show)
    end
  end
  context "update #PUT" do
    it "success" do
      @group = create(:group, name: "test1", introduce: "test1", image: image)
      expect do
        put group_path(@group), params: { name: "test2", introduce: "test2", image: image }, as: :json
      end.to change { Group.find(@group.id).name }.from("test1").to("test2").and change { Group.find(@group.id).introduce }.from("test1").to("test2")
      expect(response).to have_http_status(200)
      expect(response).to render_template(:show)
    end
  end
  context "destroy #DELETE" do
    it "success" do
      @group = create(:group)
      expect do
        delete group_path(@group), params: { id: @group.id }, as: :json
      end.to change(Group, :count).by(-1)
    end
  end
end
