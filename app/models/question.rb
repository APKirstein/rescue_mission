class Question < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true, length: { minimum: 40 }
  validates :description, presence: true, length: { minimum: 150 }
end
