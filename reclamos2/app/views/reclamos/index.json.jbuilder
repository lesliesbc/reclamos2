json.array!(@reclamos) do |reclamo|
  json.extract! reclamo, :id, :empresa, :reclamo, :rut_cliente_id, :cliente
  json.url reclamo_url(reclamo, format: :json)
end
