class BadgeService

  BADGE_GIVING_RULES = %w[
    test_in_one_attempt
    category_guru
    level_guru
    ] 

  attr_accessor :test_passage, :badges, :user, :category, :test

  def initialize(test_passage)
    @test_passage = test_passage
    @badges = []
    @user = test_passage.user
    @category = test_passage.test.category
    @test = @test_passage.test
  end

  def call
    correct_badges = Badge.all.select { |b| self.respond_to?("rule_#{b.rule_name}") }
    correct_badges.each do |b|
      if send("rule_#{b.rule_name.to_sym}", b)
        @badges << b
      end
    end
    @badges
  end

  def rule_test_in_one_attempt(*args)
    test_passage.passed? && test_passage.number_of_attempts == 1 
  end

  def rule_category_guru(badge)
    successful_tests = if already_has_badge?(badge)
      successful_tests_after_badge(badge)
    else
      user.successful_tests.by_category_title(category.title)
    end
    successful_tests.uniq.size == category.tests.size
  end

  def rule_level_guru(badge)
    successful_tests = if already_has_badge?(badge)
      successful_tests_after_badge(badge)
    else
      user.successful_tests.by_level(test.level)
    end
    successful_tests.uniq.size == Test.by_level(test.level).size
  end

  def successful_tests_after_badge(badge)
    Test.joins(:test_passages).where('test_passages.updated_at > ? AND
                                      test_passages.user_id = ? AND
                                      test_passages.success = ?',
                                      user.achievements.where(badge_id: badge.id).last.updated_at,
                                      user.id,
                                      true)
  end

  def already_has_badge?(badge)
    user.badges.include?(badge)
  end
end