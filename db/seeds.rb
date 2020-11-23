# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning Database'
User.delete_all
Interview.delete_all
Video.delete_all
Candidate.delete_all
Question.delete_all
Review.delete_all

# users
puts 'Creating users'
maria = User.create(email: "maria@lescreen.com", password: "123456")

# Interview
puts 'Creating Interviews'
one = Interview.create(open_date: "19/11/2020", final_date: "25/11/2020", name:"CTO", company:"Twitter", user: maria)
two = Interview.create(open_date: "19/11/2020", final_date: "25/11/2020", name: "Full Stack", company: "LeWagon", user: maria)
# Videos
puts 'Creating Videos'
video_one = Video.create(name: "name1", interview: one)

#Candidates
puts 'Creating candidates'
jonny = Candidate.create(video: video_one, first_name: "Jonny", last_name: "Davis", email: "jonny@davis.pt")

#Questions
puts  'Creating questions'
question_one = Question.create(question: "Introduce yourself in french", interview: one)

# Review
puts 'Creating Reviews'
review_one = Review.create(rating: "5", comment: "stars", video: video_one, user: maria)

#done
puts 'Its alright'