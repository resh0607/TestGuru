class User < ApplicationRecord
  has_many :tests_users
  has_many :tests, through: :tests_users, dependent: :destroy
  has_many :authored_tests, class_name: 'Test', dependent: :nullify

  def tests_by_level(level)
    tests.by_level(level)
  end
end
