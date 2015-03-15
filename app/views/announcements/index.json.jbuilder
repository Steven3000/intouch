json.array!(@announcements) do |announcement|
  json.extract! announcement, :id, :song_id, :post_creation_date, :url, :artwork
  json.url announcement_url(announcement, format: :json)
end
