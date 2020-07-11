class BadgeService

  BADGES_GIVING_RULES = ['555', '333']
  
  attr_accessor :test_passage, :badges, :user, :category, :test_level

  def initialize(test_passage)
    @test_passage = test_passage
    @badges = []
    @user = test_passage.user
    @category = test_passage.test.category
    @test_level = @test_passage.test.level
  end

  def call
    correct_badges = Badge.all.select { |b| self.respond_to?("rule_#{b.rule_name}") }
    correct_badges.each do |b|
      if send("rule_#{b.rule_name.to_sym}")
          badges << b
      end
    end
    badges
  end

  def rule_test_in_one_attempt
    test_passage.passed? && test_passage.number_of_attempts == 1 
  end

  def rule_category_guru
    user.successful_tests.where(category: category).length == category.tests.length
  end

  def rule_level_guru
    user.successful_tests.where(level: test_level).length == Test.all.where(level: test_level).length
  end
end