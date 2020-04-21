# ruby encoding: utf-8

users = User.create!([{name: :Ivan}])

categories = Category.create!([
  {title: :Backend},
  {title: :Frontend},
  {title: :Mobile}
])

tests = Test.create!([
  {title: :Ruby, level: 2, category: categories[0], author: users[0]},
  {title: :HTML, level: 1, category: categories[1], author: users[0]},
  {title: :SQL, level: 1, category: categories[0], author: users[0]},
  {title: :Java, level: 2, category: categories[2], author: users[0]},
  {title: :Rails, level: 1, category: categories[0], author: users[0]}
])

questions = Question.create!([
  {body: 'RubyTestFirstQuestion', test: tests[0]},
  {body: 'RubyTestSecondQuestion', test: tests[0]},
  {body: 'RubyTestThirdQuestion', test: tests[0]},
  {body: 'HTMLTestFirstQuestion', test: tests[1]},
  {body: 'HTMLTestSecondQuestion', test: tests[1]},
  {body: 'HTMLTestThirdQuestion', test: tests[1]},
  {body: 'SQLTestFirstQuestion', test: tests[2]},
  {body: 'SQLTestSecondQuestion', test: tests[2]},
  {body: 'SQLTestThirdQuestion', test: tests[2]},
  {body: 'RailsTestFirstQuestion', test: tests[4]},
  {body: 'RailsTestSecondQuestion', test: tests[4]},
  {body: 'RailsTestThirdQuestion', test: tests[4]},
  {body: 'JavaTestFirstQuestion', test: tests[3]},
  {body: 'JavaTestSecondQuestion', test: tests[3]},
  {body: 'JavaTestThirdQuestion', test: tests[3]}
])

answers = Answer.create!([

{body: 'RubyTestFirstQuestionFirstAnswer', question: questions[0]},
{body: 'RubyTestFirstQuestionSecondAnswer', question: questions[0], correct: true},
{body: 'RubyTestFirstQuestionThirdAnswer', question: questions[0]},

{body: 'RubyTestSecondQuestionFirstAnswer', question: questions[1]},
{body: 'RubyTestSecondQuestionSecondAnswer', question: questions[1]},
{body: 'RubyTestSecondQuestionThirdAnswer', question: questions[1], correct: true},

{body: 'RubyTestThirdQuestionFirstAnswer', question: questions[2], correct: true},
{body: 'RubyTestThirdQuestionSecondAnswer', question: questions[2]},
{body: 'RubyTestThirdQuestionThirdAnswer', question: questions[2]},

{body: 'HTMLTestFirstQuestionFirstAnswer', question: questions[3], correct: true},
{body: 'HTMLTestFirstQuestionSecondAnswer', question: questions[3]},
{body: 'HTMLTestFirstQuestionThirdAnswer', question: questions[3]},

{body: 'HTMLTestSecondtQuestionFirstAnswer', question: questions[4]},
{body: 'HTMLTestSecondQuestionSecondAnswer', question: questions[4], correct: true},
{body: 'HTMLTestSecondQuestionThirdAnswer', question: questions[4]},

{body: 'HTMLTestThirdQuestionFirstAnswer', question: questions[5], correct: true},
{body: 'HTMLTestThirdQuestionSecondAnswer', question: questions[5]},
{body: 'HTMLTestThirdQuestionThirdAnswer', question: questions[5]},

{body: 'SQLTestFirstQuestionFirstAnswer', question: questions[6]},
{body: 'SQLTestFirstQuestionSecondAnswer', question: questions[6]},
{body: 'SQLTestFirstQuestionThirdAnswer', question: questions[6], correct: true},

{body: 'SQLTestSecondQuestionFirstAnswer', question: questions[7]},
{body: 'SQLTestSecondQuestionSecondAnswer', question: questions[7], correct: true},
{body: 'SQLTestSecondQuestionThirdAnswer', question: questions[7]},

{body: 'SQLTestThirdQuestionFirstAnswer', question: questions[8], correct: true},
{body: 'SQLTestThirddQuestionSecondAnswer', question: questions[8]},
{body: 'SQLTestThirdQuestionThirdAnswer', question: questions[8]},

{body: 'RailsTestFirstQuestionFirstAnswer', question: questions[9]},
{body: 'RailsTestFirstQuestionSecondAnswer', question: questions[9]},
{body: 'RailsTestFirstQuestionThirdAnswer', question: questions[9], correct: true},

{body: 'RailsTestSecondQuestionFirstAnswer', question: questions[10], correct: true},
{body: 'RailsTestSecondQuestionSecondAnswer', question: questions[10]},
{body: 'RailsTestSecondQuestionThirdAnswer', question: questions[10]},

{body: 'RailsTestThirdQuestionFirstAnswer', question: questions[11]},
{body: 'RailsTestThirdQuestionSecondAnswer', question: questions[11], correct: true},
{body: 'RailsTestThirdQuestionThirdAnswer', question: questions[11]},

{body: 'JavaTestFirstQuestionFirstAnswer', question: questions[12]},
{body: 'JavaTestFirstQuestionSecondAnswer', question: questions[12], correct: true},
{body: 'JavaTestFirstQuestionThirdAnswer', question: questions[12]},

{body: 'JavaTestSecondQuestionFirstAnswer', question: questions[13], correct: true},
{body: 'JavaTestSecondQuestionSecondAnswer', question: questions[13]},
{body: 'JavaTestSecondQuestionThirdAnswer', question: questions[13]},

{body: 'JavaTestThirdQuestionFirstAnswer', question: questions[14]},
{body: 'JavaTestThirdQuestionSecondAnswer', question: questions[14]},
{body: 'JavaTestThirdQuestionThirdAnswer', question: questions[14], correct: true}
])




