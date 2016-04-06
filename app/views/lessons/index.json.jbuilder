json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :code
  json.url lesson_url(lesson, format: :json)
end
