class CreateProductTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :product_types, id: :uuid, default: 'uuid_generate_v4()' do |t|
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
