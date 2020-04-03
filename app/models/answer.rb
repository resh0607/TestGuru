class Answer < ApplicationRecord
  
  belongs_to :question

  validates :body, presence: true
  validate :validate_number_of_answers

  scope :correct, -> { where(correct: true) }

  private

  def validate_number_of_answers
    errors.add(:base, message: 'Number of answers should be in 1..4') if question.answers.count >= 4
  end
end
