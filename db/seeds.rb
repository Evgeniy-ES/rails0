# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create(
  [{name: 'Ivan', surname: 'Ivanov'},
   {name: 'Boris', surname: 'Borisov'},
   {name: 'Kiril', surname: 'Kirilov'}])

categories = Category.create([{category: 'One', user_id: users[1]}, {category: 'Two', user_id: users[1]}])

tests = Test.create(
  [{title: 'Physics', level: 1, category_id: categories[1].id},
   {title: 'Biology', level: 2, category_id: categories[0].id},
   {title: 'Mathematics', level: 1, category_id: categories[1].id}])

questions = Question.create(
  [{body: '2 + 2 = ?', test_id: tests[2].id},
   {body: '3 + 2 = ?', test_id: tests[2].id},
   {body: 'The mouse is - ', test_id: tests[1].id},
   {body: 'g = ? m/sec2', test_id: tests[0].id}])

Answer.create(
  [{text: '4', question_id: questions[0].id},
   {text: '5', question_id: questions[1].id},
   {text: 'Animal', question_id: questions[2].id},
   {text: '9.8', question_id: questions[3].id}])

UsersTest.create([
    {user_id: users[0].id, test_id: tests[0].id},
    {user_id: users[1].id, test_id: tests[1].id},
    {user_id: users[2].id, test_id: tests[2].id},
    {user_id: users[0].id, test_id: tests[2].id}])
