# ruby encoding: utf-8

User.create(name: 'Ivan')

Category.create(title: 'Backend')
Category.create(title: 'Frontend')
Category.create(title: 'Mobile')

Test.create(title: 'Ruby', category_id: 1)
Test.create(title: 'HTML', category_id: 2)
Test.create(title: 'SQL', category_id: 1)
Test.create(title: 'Java', category_id: 3)
Test.create(title: 'Rails', category_id: 1)

Question.create(body: 'Приведите примет полиморфизма в Ruby', test_id: 1)
Question.create(body: 'Укажите типизации Ruby', test_id: 1)
Question.create(body: 'Какой тег используется для того, чтобы гиперссылка открывалась в новом окне?', test_id: 2)
Question.create(body: 'Какие категории SQL можно выделить', test_id: 3)
Question.create(body: 'Приведите последовательность обработки http запроса приложением Rails', test_id: 5)
Question.create(body: 'Какое применение, кроме мобильной разработки имеет Java?', test_id: 4)

Answer.create(body: "2 + 4 = 6, a + b = ab, в данном примере один и тот же метод '+' в первом случае работает как арифметическая
операция сложения, а во втором как операция конкатенации строк, т.е. в зависимости от того, на объекте какого типа этот метод вызван и объект какого типа получает
в качестве аргумента, данный метод работает по-разному", question_id: 1)
Answer.create(body: 'Ruby имеет динамическую, строгую, неявную типизацию', question_id: 2)
Answer.create(body: 'Для того, чтобы ссылка открывалась в новом окне используется тег <a>', question_id: 3)
Answer.create(body: 'В SQL можно выделить категории: DDL - Data Definition Language и DML Data Manipulation Language', question_id: 4)
Answer.create(body: 'сервер - роутер - контроллер - модель - БД - модель - контроллер - представление - контроллер - сервер', question_id: 5)
Answer.create(body: 'Java также применяется в web - разработке, big-data, серверных приложениях, программировании встроенных систем и др.', question_id: 6)
 







