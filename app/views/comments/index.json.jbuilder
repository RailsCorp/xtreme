json.array! @comments do |comment|
  json.extract! comment, :text, :task_id, :user_id
end
