json.tasks do
  json.array! @tasks, :title, :content, :task_type, :is_finished, :on_deadline
end
