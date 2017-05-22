json.extract! product, :id, :name, :product_pulse, :product_on_net_tariff, :product_off_net_tariff, :product_atw, :product_call_destination, :product_priority, :created_at, :updated_at
json.url product_url(product, format: :json)
