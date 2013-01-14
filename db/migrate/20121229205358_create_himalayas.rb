class CreateHimalayas < ActiveRecord::Migration
  def change
    create_table :himalayas do |t|
      t.string :name
      t.string :email
      t.date :reserva
      t.string :personas
      t.string :hora

      t.timestamps
    end
  end
end
