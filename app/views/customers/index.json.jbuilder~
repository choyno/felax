json.array!(@customers) do |customer|
  json.extract! customer, :id, :first_name, :last_name, :nick_name, :gender, :address, :phone_number, :email_address, :balance, :gender_pref
  json.url customer_url(customer, format: :json)
end
