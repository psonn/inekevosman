json.array!(@homes) do |home|
  json.extract! home, :id, :title, :body
  json.url home_url(home, format: :json)
end
