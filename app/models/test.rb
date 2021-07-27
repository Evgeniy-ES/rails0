class Test < ApplicationRecord
  belongs_to :categories
  has_many :questions

end
