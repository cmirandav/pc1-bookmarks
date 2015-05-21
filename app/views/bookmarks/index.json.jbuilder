json.array!(@bookmarks) do |bookmark|
  json.extract! bookmark, :id, :url, :reference
  json.url bookmark_url(bookmark, format: :json)
end
