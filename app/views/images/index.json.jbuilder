json.array!(@images) do |image|
  json.extract! image, :id, :description, :post_images
  json.url image_url(image, format: :json)
end
