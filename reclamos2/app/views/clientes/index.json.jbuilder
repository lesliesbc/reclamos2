json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :rut_cliente, :nombre_cliente, :fono_cliente, :email
  json.url cliente_url(cliente, format: :json)
end
