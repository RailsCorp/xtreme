json.array! @members do |member|
  json.extract! member, :role, :group_id, :user_id
end
