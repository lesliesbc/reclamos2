class CreateReclamos < ActiveRecord::Migration
  def change
    create_table :reclamos do |t|
      t.string :empresa
      t.string :reclamo
      t.references :rut_cliente, index: true
      t.string :cliente

      t.timestamps
    end
  end
end
