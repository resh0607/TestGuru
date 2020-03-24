# ruby encoding: utf-8

users = User.create!([{name: :Ivan}])

categories = Category.create!([
  {title: :Backend},
  {title: :Frontend},
  {title: :Mobile}
])

tests = Test.create!([
  {title: :Ruby, level: 0, category_id: categories[0].id},
  {title: :HTML, level: 0, category_id: categories[1].id},
  {title: :SQL, level: 0, category_id: categories[0].id},
  {title: :Java, level: 0, category_id: categories[2].id},
  {title: :Rails, level: 1, category_id: categories[0].id}
])

questions = Question.create!([
  {body: 'RubyTestFirstQuestion', test_id: tests[0].id},
  {body: 'RubyTestSecondQuestion', test_id: tests[0].id},
  {body: 'RubyTestThirdQuestion', test_id: tests[0].id},
  {body: 'HTMLTestFirstQuestion', test_id: tests[1].id},
  {body: 'HTMLTestSecondQuestion', test_id: tests[1].id},
  {body: 'HTMLTestThirdQuestion', test_id: tests[1].id},
  {body: 'SQLTestFirstQuestion', test_id: tests[2].id},
  {body: 'SQLTestSecondQuestion', test_id: tests[2].id},
  {body: 'SQLTestThirdQuestion', test_id: tests[2].id},
  {body: 'RailsTestFirstQuestion', test_id: tests[4].id},
  {body: 'RailsTestSecondQuestion', test_id: tests[4].id},
  {body: 'RailsTestThirdQuestion', test_id: tests[4].id},
  {body: 'JavaTestFirstQuestion', test_id: tests[3].id},
  {body: 'JavaTestSecondQuestion', test_id: tests[3].id},
  {body: 'JavaTestThirdQuestion', test_id: tests[3].id}
])

answers = Answer.create!([

{body: 'RubyTestFirstQuestionFirstAnswer', question_id: questions[0].id},
{body: 'RubyTestFirstQuestionSecondAnswer', question_id: questions[0].id, correct: true},
{body: 'RubyTestFirstQuestionThirdAnswer', question_id: questions[0].id},

{body: 'RubyTestSecondQuestionFirstAnswer', question_id: questions[1].id},
{body: 'RubyTestSecondQuestionSecondAnswer', question_id: questions[1].id},
{body: 'RubyTestSecondQuestionThirdAnswer', question_id: questions[1].id, correct: true},

{body: 'RubyTestThirdQuestionFirstAnswer', question_id: questions[2].id, correct: true},
{body: 'RubyTestThirdQuestionSecondAnswer', question_id: questions[2].id},
{body: 'RubyTestThirdQuestionThirdAnswer', question_id: questions[2].id},

{body: 'HTMLTestFirstQuestionFirstAnswer', question_id: questions[3].id, correct: true},
{body: 'HTMLTestFirstQuestionSecondAnswer', question_id: questions[3].id},
{body: 'HTMLTestFirstQuestionThirdAnswer', question_id: questions[3].id},

{body: 'HTMLTestSecondtQuestionFirstAnswer', question_id: questions[4].id},
{body: 'HTMLTestSecondQuestionSecondAnswer', question_id: questions[4].id, correct: true},
{body: 'HTMLTestSecondQuestionThirdAnswer', question_id: questions[4].id},

{body: 'HTMLTestThirdQuestionFirstAnswer', question_id: questions[5].id, correct: true},
{body: 'HTMLTestThirdQuestionSecondAnswer', question_id: questions[5].id},
{body: 'HTMLTestThirdQuestionThirdAnswer', question_id: questions[5].id},

{body: 'SQLTestFirstQuestionFirstAnswer', question_id: questions[6].id},
{body: 'SQLTestFirstQuestionSecondAnswer', question_id: questions[6].id},
{body: 'SQLTestFirstQuestionThirdAnswer', question_id: questions[6].id, correct: true},

{body: 'SQLTestSecondQuestionFirstAnswer', question_id: questions[7].id},
{body: 'SQLTestSecondQuestionSecondAnswer', question_id: questions[7].id, correct: true},
{body: 'SQLTestSecondQuestionThirdAnswer', question_id: questions[7].id},

{body: 'SQLTestThirdQuestionFirstAnswer', question_id: questions[8].id, correct: true},
{body: 'SQLTestThirddQuestionSecondAnswer', question_id: questions[8].id},
{body: 'SQLTestThirdQuestionThirdAnswer', question_id: questions[8].id},

{body: 'RailsTestFirstQuestionFirstAnswer', question_id: questions[9].id},
{body: 'RailsTestFirstQuestionSecondAnswer', question_id: questions[9].id},
{body: 'RailsTestFirstQuestionThirdAnswer', question_id: questions[9].id, correct: true},

{body: 'RailsTestSecondQuestionFirstAnswer', question_id: questions[10].id, correct: true},
{body: 'RailsTestSecondQuestionSecondAnswer', question_id: questions[10].id},
{body: 'RailsTestSecondQuestionThirdAnswer', question_id: questions[10].id},

{body: 'RailsTestThirdQuestionFirstAnswer', question_id: questions[11].id},
{body: 'RailsTestThirdQuestionSecondAnswer', question_id: questions[11].id, correct: true},
{body: 'RailsTestThirdQuestionThirdAnswer', question_id: questions[11].id},

{body: 'JavaTestFirstQuestionFirstAnswer', question_id: questions[12].id},
{body: 'JavaTestFirstQuestionSecondAnswer', question_id: questions[12].id, correct: true},
{body: 'JavaTestFirstQuestionThirdAnswer', question_id: questions[12].id},

{body: 'JavaTestSecondQuestionFirstAnswer', question_id: questions[13].id, correct: true},
{body: 'JavaTestSecondQuestionSecondAnswer', question_id: questions[13].id},
{body: 'JavaTestSecondQuestionThirdAnswer', question_id: questions[13].id},

{body: 'JavaTestThirdQuestionFirstAnswer', question_id: questions[14].id},
{body: 'JavaTestThirdQuestionSecondAnswer', question_id: questions[14].id},
{body: 'JavaTestThirdQuestionThirdAnswer', question_id: questions[14].id, correct: true}
])




