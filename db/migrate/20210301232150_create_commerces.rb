class CreateCommerces < ActiveRecord::Migration[6.1]
  def change
    create_table :commerces, id: :uuid do |t|
      t.string :name
      t.string :location
      t.string :cellphone_number
      t.string :whatsapp
      t.boolean :is_active, default: true

      t.timestamps
    end
  end
end
