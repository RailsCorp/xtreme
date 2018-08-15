json.array! @groups do |group|
  json.extract! group, :name, :image, :introduce
end
