json.array!(@learns) do |learn|
  json.extract! learn, :id, :answer, :instructions, :title
  json.url learn_url(learn, format: :json)
end
