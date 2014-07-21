json.array!(@as) do |a|
  json.extract! a, :id, :quiz_id, :code, :title, :text
  json.url a_url(a, format: :json)
end
