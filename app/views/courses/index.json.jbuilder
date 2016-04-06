json.array!(@courses) do |course|
  json.extract! course, :id, :title, :instructions, :answer
  json.url course_url(course, format: :json)
end
