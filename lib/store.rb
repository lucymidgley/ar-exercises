class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validate :must_carry_male_or_female_apparel
  def must_carry_male_or_female_apparel
  if !mens_apparel && !womens_apparel
    errors.add(:mens_apparel, "Store must at least carry men's or women's apparel")
    errors.add(:womens_apparel, "Store must at least carry men's or women's apparel")
  end
end
before_destroy :check_for_employees

private
  def check_for_employees
    if Employee.where(store_id: self.id).exists?
    errors[:base] << "Cannot delete store with employees!"
      return false
    end
  end

end
