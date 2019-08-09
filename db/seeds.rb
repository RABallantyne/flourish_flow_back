# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
goal_one = Goal.create(name: "Test Goal", completion_date: DateTime.now, completion_percent: 0.50)
Step.create(goal: goal_one, name: "do things")
Step.create(goal: goal_one, name: "do more things")