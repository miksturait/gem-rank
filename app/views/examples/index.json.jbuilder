json.array!(@examples) do |example|
  json.extract! example, :id, :user_id, :description, :votes, :rank
  json.url example_url(example, format: :json)
end
