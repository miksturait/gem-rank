json.array!(@example_alts) do |example_alt|
  json.extract! example_alt, :id, :user_id, :example_id, :description, :votes, :rank
  json.url example_alt_url(example_alt, format: :json)
end
