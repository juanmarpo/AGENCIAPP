json.array!(@castings) do |casting|
  json.extract! casting, :id, :title, :description, :payment_type, :ubication, :casting_end, :video, :images, :member_id
  json.url casting_url(casting, format: :json)
end
