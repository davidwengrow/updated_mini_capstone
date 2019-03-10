class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :name, length: { minimum: 2 }
  validates :description, length: { minimum: 2 }
  validates :description, length: { maximum: 500 }

  # def supplier
  belongs_to :supplier
  # end

  # def images
  has_many :images
  # end

  def friendly_updated_at
    updated_at.strftime("%B %e, %Y")
  end
  def is_discounted
    price <= 10
  end
  def tax
    price * 0.09
  end
  def total
    price + tax
  end
end
