class User < ApplicationRecord
  has_and_belongs_to_many :tests
 
  # def tests_by_level(level)
  #   Test.joins("JOIN tests_users ON tests.id = tests_users.test_id").where(tests_users:{user_id: id}, level: level)
  # end
end
