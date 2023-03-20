class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :identificacion
      t.string :nombre
      t.string :apellido

      t.timestamps
    end
  end
end
