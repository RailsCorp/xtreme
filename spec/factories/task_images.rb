FactoryBot.define do
  factory :task_image do
    image Rack::Test::UploadedFile.new(File.join(Rails.root, "public/images/img_0813.png"))
    association :task, factory: :task
  end
end
