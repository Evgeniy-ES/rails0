class Test < ApplicationRecord
  belongs_to :category
  has_many :questions

  belongs_to :author, class_name: 'User', foregin_key: :author_id

end
