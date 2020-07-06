class Badge < ApplicationRecord
  has_many :users, through: :achievements
  has_many :achievements
end
