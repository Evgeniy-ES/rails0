class Test < ApplicationRecord
  belongs_to :category
  has_many :questions

  belongs_to :author, class_name: 'User', foregin_key: :author_id

  scope :category_name0, -> (category) {joins(:category).where(categories: {title :category}) }

  def self.category_name(category)
    category_name0(category).order(id: desc).pluck('test.title')
  end

  scope :simple_level, -> { where(level: 0..1) }
  scope :average_level, -> { where(level: 2..4) }
  scope :hard_level, -> {where(level: 5..Float.INFINITY) }

  validates :title, presence: true, uniqueness: { scope: :level }
  validates :level, numericality: ( greater_than_or_equal_to: 1 }

end
