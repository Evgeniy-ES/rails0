class Test < ApplicationRecord
  has_many :test_passages
  has_many :users, through: :test_passages

  belongs_to :category
  has_many :questions

  belongs_to :author, class_name: 'User', foreign_key: :author_id

  scope :by_category_name, ->(category) { joins(:category).where(categories: { title: category }) }

  def self.by_category_name_arr(category)
    by_category_name(category).order(id: :desc).pluck('tests.title')
  end

  scope :simple_level, -> { where(level: 0..1) }
  scope :average_level, -> { where(level: 2..4) }
  scope :hard_level, -> {where(level: 5..Float.INFINITY) }

  validates :title, presence: true, uniqueness: { scope: :level }
  validates :level, numericality: ( greater_than_or_equal_to: 1 }

end
