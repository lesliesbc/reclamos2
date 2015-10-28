class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :rut_cliente
      t.string :nombre_cliente
      t.integer :fono_cliente
      t.string :email

      t.timestamps
    end
  end
end
