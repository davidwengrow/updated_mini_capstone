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
  has_many :orders, through: :carted_products
  has_many :category_products
  has_many :carted_products
  def categories
    result = []
    category_products.each do |category_product|
      result << category_product.category
    end
    return result
  end
  def friendly_updated_at
    updated_at.strftime("%B %e, %Y")
  end
  def is_discounted?
    price <= 10
  end
  def tax
    price * 0.09
  end
  def total
    price + tax
  end

  def primary_image
    if images.length > 0
      images[0].url
    else
      "https://1080motion.com/wp-content/uploads/2018/06/NoImageFound.jpg.png"
    end
    
  end
end
