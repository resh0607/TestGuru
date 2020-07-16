class Badge < ApplicationRecord
  mount_uploader :image, BadgeImageUploader

  has_many :achievements, dependent: :destroy
  has_many :users, through: :achievements

  validates :name, :rule_name, presence: true
  validates_uniqueness_of :name, case_sensitive: false
  # validates_uniqueness_of :rule_name, case_sensitive: false
  validates :rule_name, inclusion: { in: BadgeService::BADGE_GIVING_RULES, 
                                     message: "There is no such rule" }
end
