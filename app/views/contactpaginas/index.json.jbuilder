json.array!(@contactpaginas) do |contactpagina|
  json.extract! contactpagina, :id, :title, :body
  json.url contactpagina_url(contactpagina, format: :json)
end
