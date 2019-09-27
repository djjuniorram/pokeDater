json.extract! pet, :id, :species, :nickname, :likes, :dislikes, :type, :img_url, :single, :partner_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
