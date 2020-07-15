class BadgeService

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
    successful_tests.uniq.length == category.tests.length
  end

  def rule_level_guru(*args)
    user.successful_tests.where(level: test_level).uniq.length == Test.all.where(level: test_level).length
  end

  def successful_tests_after_badge(badge)
    Test.joins(:test_passages).where('test_passages.updated_at > ? AND test_passages.user_id = ?', user.achievements.where(badge_id: badge.id).last.updated_at, user.id )
  end

  def already_has_badge?(badge)
    user.badges.include?(badge)
  end
end