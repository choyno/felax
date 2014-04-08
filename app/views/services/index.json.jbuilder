json.array!(@services) do |service|
  json.extract! service, :id, :name, :description, :time_length, :commission, :room_type
  json.url service_url(service, format: :json)
end
