json.extract! short_code, :id, :name, :phone, :tariff, :created_at, :updated_at
json.url short_code_url(short_code, format: :json)
