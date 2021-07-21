class Category < ApplicationRecord
  def category_name(category)
    joins('INNER JOIN categories ON tests.category_id = categories.id')
      .where(categories: { category: category }).order(id: :desc).pluck('tests.title')
  end
end
