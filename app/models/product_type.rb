class ProductType < ApplicationRecord

  #callbacks
  before_save :type_status

  #Validations
  validates :name, presence: true, uniqueness:true

  #Scopes
  scope :by_active, -> { where(status: "active") }

  def type_status
  	self.status = "active"
  end

end
