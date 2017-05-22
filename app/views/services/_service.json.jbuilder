json.extract! service, :id, :name, :service_pulse, :service_on_net_tariff, :service_off_net_tariff, :service_atw, :service_call_destination, :service_priority, :created_at, :updated_at
json.url service_url(service, format: :json)
