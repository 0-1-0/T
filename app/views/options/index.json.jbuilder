json.array!(@options) do |option|
  json.extract! option, :id, :q_id, :text, :code
  json.url option_url(option, format: :json)
end
