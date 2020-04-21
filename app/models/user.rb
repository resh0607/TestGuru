class User < ApplicationRecord
  has_many :test_passages
  has_many :tests, through: :test_passages, dependent: :destroy
  has_many :authored_tests, class_name: 'Test', dependent: :nullify

  def tests_by_level(level)
    tests.by_level(level)
  end
end
