# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'bencaneba', password: 'password', first_name: 'Ben', last_name: 'Caneba', email: 'ben_caneba@kleinschmidt.com', phone: '9062314010', tutor: 'false')

School.create(name: "Minnesota State University", location: "Minneapolis", state: "MN")
School.create(name: "Oklahoma State University", location: "Ok City", state: "OK")
School.create(name: "Delaware State University", location: "Dover", state: "DE")
School.create(name: "Oregon State University", location: "Beaverton", state: "OR")
School.create(name: "Detroit State University", location: "Detroit", state: "MI")

Course.create(name: "Accounting 101", description: "Basic Accounting principles", school_id: 1)
Course.create(name: "Mathematics 301", description: "Advanced Math principles", school_id: 1)
Course.create(name: "Engineering 400", description: "Intermediate Engineering principles", school_id: 1)

Course.create(name: "Accounting 101", description: "Basic Accounting principles", school_id: 2)
Course.create(name: "Mathematics 301", description: "Advanced Math principles", school_id: 2)

Course.create(name: "Accounting 101", description: "Basic Accounting principles", school_id: 3)
Course.create(name: "Mathematics 301", description: "Advanced Math principles", school_id: 3)

Course.create(name: "Accounting 101", description: "Basic Accounting principles", school_id: 4)
Course.create(name: "Mathematics 301", description: "Advanced Math principles", school_id: 4)

Course.create(name: "Accounting 101", description: "Basic Accounting principles", school_id: 5)
Course.create(name: "Mathematics 301", description: "Advanced Math principles", school_id: 5)


#make our only user a student of the school we created
UserSchool.create(user_id: 1, school_id: 1)
#make our only user take accounting course
UserCourse.create(user_id: 1, course_id: 1)

# create a post that belongs to our one user
Post.create(title: "First Post", description: "This is the first post", user_id: 1, school_id: 1, course_id: 1)

# make the user into a tutor
@user = User.first
@user.update(tutor: 'true')
@user.save

# create tutor profile for the user
IsTutor.create(id: 1, rate: 12, description: "I am great at Math!", user_id: 1, course_id: 1)

# find the courses that a user is a tutor of
# puts @user.is_tutors.find_by(course_id: @user.courses.first.id)

# create a friendship between the 2 users
User.create(first_name: "George", last_name: "Costanza", email: "gcostanza@gmail.com", phone: "9064564010", username: "gcostanza", password: "password", tutor: "false")
Friendship.create(user_id: 1, friend_id: 2)













