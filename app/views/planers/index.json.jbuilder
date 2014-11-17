json.array!(@planers) do |planer|
  json.extract! planer, :id, :new_plan, :priority, :date, :status
  json.url planer_url(planer, format: :json)
end
