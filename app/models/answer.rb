class Answer < ActiveRecord::Base
  validates :body, presence: true, uniqueness: true
  validates :question, presence: true

  belongs_to :question
end
