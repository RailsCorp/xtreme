json.set! :comment do
  json.comment @comment.text
  json.task_id @comment.task_id
  json.user_id @comment.user_id
end
