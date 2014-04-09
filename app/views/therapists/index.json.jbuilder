json.array!(@therapists) do |therapist|
  json.extract! therapist, :id, :first_name, :last_name, :address, :phone_number, :email, :therapist_type, :ssn, :nick_name, :gender
  json.url therapist_url(therapist, format: :json)
end
