class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products, id: :uuid, default: 'uuid_generate_v4()' do |t|
      t.string :name
      t.string :cost_price
      t.integer :gst_percentage
      t.string :discount
      t.string :total_price
      t.string :status

      t.timestamps
    end
  end
end
