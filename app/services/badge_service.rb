class BadgeService

  BADGES_GIVING_RULES = ['555', '333']
  
  attr_accessor :test_passage
  attr_accessor :badges
  attr_reader :user
  attr_accessor :category

  def initialize(test_passage)
    @test_passage = test_passage
    @badges = []
    @user = test_passage.user
    @category = test_passage.test.category
  end

  # def call
  #   Badge.all.each do |badge|
  #     if self.respond_to?("rule_#{badge.rule_name}")
  #       if send("rule_#{badge.rule_name.to_sym}")
  #         badge
  #       else
  #         nil
  #       end
  #     end
  #     nil
  #   end
  # end

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
    return true if test_passage.passed? && test_passage.number_of_attempts == 1 
  end

  def rule_category_guru
    user.tests.where(category: category)
  end
end