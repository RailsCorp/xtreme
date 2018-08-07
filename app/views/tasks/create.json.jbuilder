json.set! :task do
  json.task @task.task
  json.image @task.image
  json.deadline @task.deadline
  json.task_type @task.task_type
  json.complete @task.complete
end
