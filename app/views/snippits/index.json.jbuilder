json.array!(@snippits) do |snippit|
  json.extract! snippit, :id, :user_id, :html, :css
  json.url snippit_url(snippit, format: :json)
end
