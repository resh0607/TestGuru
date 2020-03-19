class User < ApplicationRecord
  
  def tests_by_level(level)
    Test.joins("JOIN tests_users ON tests.id = tests_users.user_id").where("tests_users.user_id = :user_id AND level = :level", level: level, user_id: id)
  end
end
