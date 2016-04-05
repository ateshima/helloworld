json.array!(@text_messages) do |text_message|
  json.extract! text_message, :id, :message, :number, :user_id, :organization_id
  json.url text_message_url(text_message, format: :json)
end
