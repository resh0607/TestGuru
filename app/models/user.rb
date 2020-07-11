class User < ApplicationRecord

  devise  :database_authenticatable,
          :registerable,
          :recoverable,
          :rememberable,
          :trackable,
          :validatable,
          :confirmable

  has_many :test_passages
  has_many :tests, through: :test_passages, dependent: :destroy
  has_many :authored_tests, class_name: 'Test', dependent: :nullify
  has_many :gists, dependent: :destroy
  has_many :achievements, dependent: :destroy
  has_many :badges, through: :achievements


  def tests_by_level(level)
    tests.by_level(level)
  end

  def test_passage(test)
    test_passages.order(id: :desc).find_by(test: test)
  end

  def admin?
    self.is_a?(Admin)
  end

  def full_name
    name.empty? ? email : name
  end

  def successful_tests
    Test.joins(:test_passages).where(test_passages: {success:true, user_id: id})
  end
end
