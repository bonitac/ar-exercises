class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0, only_integer: true}
  validate :carry_clothes
  def carry_clothes
      errors.add(:mens_apparel, "need to carry either men's apparel or women's apparel") unless mens_apparel || womens_apparel #NO COLON
      errors.add(:womens_apparel, "need to carry either men's apparel or women's apparel") unless mens_apparel || womens_apparel
  end
end
