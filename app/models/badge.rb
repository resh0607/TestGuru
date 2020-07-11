class Badge < ApplicationRecord

  GIVING_RULES = %w[
                    test_in_one_attempt
                    category_guru
                    level_guru
                    ] 

  has_many :achievements, dependent: :destroy
  has_many :users, through: :achievements

  
end
