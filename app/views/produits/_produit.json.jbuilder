json.extract! produit, :id, :nom, :description, :prix, :created_at, :updated_at
json.url produit_url(produit, format: :json)
