# == Schema Information
#
# Table name: tasks
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  task_type  :integer          default(0), not null
#

class Task < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :memos, dependent: :destroy
  has_many :task_images, dependent: :destroy
  belongs_to :group
  validates :title, presence: true
  validates :group_id, presence: true
  scope :with_group, -> { includes(:group) }
  scope :search_with_title, ->(title) { where(title: title) }

  def self.create_all(params)
    logger.debug "パラメータや : #{params}"
    logger.debug "モデルTask1"
    task_images = []

    task = Task.create!(
      group_id: params[:group_id],
      title: params[:title],
      content: params[:content],
      on_deadline: params[:on_deadline],
      is_finished: params[:is_finished]
    )

    # logger.debug "まじかよ〜　params[:task_images][i][:image][:original_filename]: #{params[:task_images][0][:image][:original_filename]}"
    logger.debug "モデルTask2"
    if params[:task_images].present?
      logger.debug "if文の中に入りました！"
      params[:task_images].map { |task_image|
        logger.debug "やばいよやばいよ1#{task_image}"
        logger.debug "やばいよやばいよ2#{task_image[:image]}"
        # logger.debug "やばいよやばいよ3#{task_image[:image][:original_filename]}"
        image = TaskImage.create!(task_id: task.id, image: task_image[:image])
        task_images.push(image)
      }
    end
    logger.debug "モデルTask3"
    { task: task, task_images: task_images }
  end
end
