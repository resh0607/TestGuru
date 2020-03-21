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
  {body: 'Приведите примет полиморфизма в Ruby', test_id: tests[0].id},
  {body: 'Укажите типизации Ruby', test_id: tests[0].id},
  {body: 'Какой тег используется для того, чтобы гиперссылка открывалась в новом окне?', test_id: tests[1].id},
  {body: 'Какие категории SQL можно выделить', test_id: tests[2].id},
  {body: 'Приведите последовательность обработки http запроса приложением Rails', test_id: tests[4].id},
  {body: 'Какое применение, кроме мобильной разработки имеет Java?', test_id: tests[3].id}
])

answers = Answer.create!([
  {body: '2 + 4 = 6, a + b = ab, в данном примере один и тот же метод '+' в первом случае работает как арифметическая
    операция сложения, а во втором как операция конкатенации строк, т.е. в зависимости от того, на объекте какого типа этот метод вызван и объект какого типа получает
    в качестве аргумента, данный метод работает по-разному', question_id: questions[0].id},
  {body: 'Ruby имеет динамическую, строгую, неявную типизацию', question_id: questions[1].id},
  {body: 'Для того, чтобы ссылка открывалась в новом окне используется тег <a>', question_id: questions[2].id},
  {body: 'В SQL можно выделить категории: DDL - Data Definition Language и DML Data Manipulation Language', question_id: questions[3].id},
  {body: 'сервер - роутер - контроллер - модель - БД - модель - контроллер - представление - контроллер - сервер', question_id: questions[4].id},
  {body: 'Java также применяется в web - разработке, big-data, серверных приложениях, программировании встроенных систем и др.', question_id: questions[5].id}
])




