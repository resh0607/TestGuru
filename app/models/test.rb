class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: "User", foreign_key: "user_id"
  has_many :questions, dependent: :destroy
  has_many :tests_users
  has_many :users, through: :tests_users, dependent: :destroy

  validates :title, presence: true,
                    uniqueness: { scope: :level,
                      message: "Test with such title and level already exists" }
  validates :level, numericality: { only_integer: true, greater_than: 0 }

  scope :by_level, -> (level) { where(level: level) }
  scope :easy, -> { by_level(0..1) }
  scope :medium, -> { by_level(2..4) }
  scope :difficult, -> { by_level(5..Float::INFINITY) }
  scope :by_category_title, -> (category_title) { joins(:category).where(categories: {title: category_title}).order(title: :desc) }

  def self.by_category(category_title)
    by_category_title(category_title).pluck(:title)
  end
end
