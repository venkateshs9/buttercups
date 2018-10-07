class Product < ApplicationRecord

  #callbacks
  before_save :product_status, :product_gst, :total_price
  
  #Validations
  validates :name, :cost_price, :discount, presence: true

  #Scopes
  scope :by_active, -> { where(status: "active") }

  def product_status
    self.status = "active"
  end

  def product_gst
    if self.product_type == "cloths"
      self.gst_percentage = self.cost_price > 1000 ? 12 : 5
    end
  end

  def total_price
    self.total_price = ((self.cost_price - self.discount)* self.gst_percentage/100) + (self.cost_price - self.discount)
  end

end
