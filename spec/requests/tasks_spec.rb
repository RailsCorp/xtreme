require "rails_helper"

RSpec.describe TasksController, type: :request do
  let(:user) { create(:user) }
  # let(:image_path) { File.join(Rails.root, "spec/support/ps_logo2.png") }
  # let(:image) { Rack::Test::UploadedFile.new(image_path) }
  let(:image) { Faker::Avatar.image }
  subject do
    proc do
      post group_tasks_path(@group),
      params: {
        task: {
          title: "test",
          content: "test",
          on_deadline: "20200101",
          is_finished: false,
          task_images: [{ image: image }]
        }
      }, as: :json
    end
  end
  before do
    log_in user
    @group = create(:group)
  end
  context "attached image" do
    it "create #POST" do
      expect { subject.call }.to change(
        Task, :count
      ).by(1).and change(
        TaskImage, :count
      ).by(1)
    end
  end
end
