class ChangeColumnsFormatInMyTable < ActiveRecord::Migration[5.2]

  def self.up
    change_column :products, :cost_price, 'integer USING CAST(cost_price AS integer)'
	change_column :products, :gst_percentage, 'integer USING CAST(gst_percentage AS integer)'
	change_column :products, :discount, 'integer USING CAST(discount AS integer)'
	change_column :products, :total_price, 'integer USING CAST(total_price AS integer)'
  end
 
  def self.down
    change_column :products, :cost_price, :string
	change_column :products, :gst_percentage, :string
	change_column :products, :discount, :string
	change_column :products, :total_price, :string
  end

end
