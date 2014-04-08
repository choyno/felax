json.array!(@events) do |event|
  json.extract! event, :id, :customer_id, :therapist_id, :location_id, :service_id, :walkin, :cancel, :cancel_reason, :room_id, :starts_at, :stops_at
  json.url event_url(event, format: :json)
end
