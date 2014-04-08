json.array!(@rooms) do |room|
  json.extract! room, :id, :typer, :name, :location_id
  json.url room_url(room, format: :json)
end
