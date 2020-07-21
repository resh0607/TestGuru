class TestPassage < ApplicationRecord

  SUCCESS_PERCENT = 85

  belongs_to :user
  belongs_to :test
  belongs_to :current_question, class_name: 'Question', optional: true

  before_validation :set_current_question
  before_create :set_start_time

  def completed?
    current_question.nil?
  end

  def result_percent
    ((correct_questions.to_f / test.questions.count) * 100).round
  end

  def passed?
    result_percent >= SUCCESS_PERCENT
  end

  def question_number
    test.questions.order(:id).where('id <= ?', current_question.id).count
  end

  def total_number_of_questions
    test.questions.size
  end

  def progress_percentage
    ((question_number.to_f - 1) / total_number_of_questions * 100).round
  end

  def accept!(answer_ids)
    if correct_answer?(answer_ids)
      self.correct_questions += 1
    end
    set_success

    save!
  end

  def number_of_attempts
    TestPassage.where(test: test, user: user).count
  end

  def set_success
    self.success = passed?
  end

  def remaining_time
    unless self.test.time_limit.nil?
      (self.test.time_limit * 60 - (Time.current - created_at).seconds).to_i
    end
  end

  def set_end_time
    self.update_attribute(:end_time, Time.current)
  end

  private

  def set_start_time
    self.start_time = Time.current
  end
  
  def set_current_question
    self.current_question = next_question
  end

  def correct_answer?(answer_ids)
    correct_answers_count = correct_answers.count

    (correct_answers_count == correct_answers.where(id: answer_ids).count) &&
    correct_answers_count == answer_ids.count
  end

  def correct_answers
    current_question.answers.correct
  end

  def next_question
    if self.new_record?
      test.questions.first
    else
      test.questions.order(:id).where('id > ?', self.current_question.id).first
    end
  end
end
