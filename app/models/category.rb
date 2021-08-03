class Category < ApplicationRecord
  has_many :tests

  def category_name(category)
    joins('INNER JOIN categories ON tests.category_id = categories.id')
      .where(categories: { category: category }).order(id: :desc).pluck('tests.title')
  end
end
