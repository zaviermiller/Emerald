json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :code, :learn_id
  json.url lesson_url(lesson, format: :json)
end
