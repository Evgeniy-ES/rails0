class Question < ApplicationRecord
  belongs_to :tests
  has_one :answers
end
