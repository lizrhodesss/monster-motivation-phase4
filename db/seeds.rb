# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

 puts “seeding cohorts”
C1 = Cohort.create(start_date: “june 28”)
C2 = Cohort.create(start_date: “july 18”)
C3 = Cohort.create(start_date: “Aug 10”)


 puts “seeding users”
U1 = User.create(Username: "lizrhodesss", email: "liz@fake.com", cohort_id: 1, survey_form_id: 4, password: “secure88”)
U2 = User.create(Username: "queenB", email: "brooke@fake.com", cohort_id: 2, survey_form_id: 1, password: “pass123”)
U3 = User.create(Username: "johnroy", email: "john@fake.com", cohort_id: 3, survey_form_id: 2, password: “crackthis1”)
U4 = User.create(Username: "sheeneazy", email: "Sheena@fake.com", cohort_id: 1, survey_form_id: 3, password: “tokyo222”)
U5 = User.create(Username: "baritoneBarrett", email: "barrett@fake.com", cohort_id: 3, survey_form_id: 5, password: “diddy9”)

 puts “seeding quotes”
Q1 = Quote.create(quote: "Nothing is impossible. The word itself says 'I'm possible!'", author: “Audrey Hepburn”)
Q2 = Quote.create(quote: "Success is not final, failure is not fatal: it is the courage to continue that counts.", author: “Winston Churchhill”)
Q3 =  Quote.create(quote: "For me, becoming isn’t about arriving somewhere or achieving a certain aim. I see it instead as forward motion, a means of evolving, a way to reach continuously toward a better self. The journey doesn't end.", author: “Michelle Obama”)
Q4 = Quote.create(quote: "I want to be in the arena. I want to be brave with my life. And when we make the choice to dare greatly, we sign up to get our asses kicked. We can choose courage or we can choose comfort, but we can't have both. Not at the same time.", author: “Brene Brown”)
Q5 = Quote.create(quote: "Believe you can and you're halfway there.", author: “Theodore Roosevelt”)


 puts “seeding  non_tech_resources”
Nt1 = Non_tech_resource.create(url: “https://www.forbes.com/sites/forbescoachescouncil/2017/07/28/18-ways-to-get-better-at-working-under-pressure/?sh=697a29e42e35”, title: “18 Ways To Get Better At Working Under Pressure”)
Nt2 = Non_tech_resource.create(url: “https://www.apa.org/monitor/2021/06/cover-impostor-phenomenon” , title: “How to overcome impostor phenomenon”)
Nt3 = Non_tech_resource.create(url: “https://www.findingoptimism.com/mental-hacks-to-improve-your-focus/” , title: “27 Mental Hacks To Improve Your Focus Right Now”)


 puts “seeding tech_resources”
tr1 = Tech_resource.create(url: “https://dev.to/jakedapper/how-many-fonts-you-got-5824”, title: “How Many Fonts You Got?”)
tr2 = Tech_resource.create(url: “https://dev.to/florinpop17/24-javascript-array-methods-explained-video-format-i3e” , title: “24 JavaScript Array Methods explained (video format)”)
”tr3 = Tech_resource.create(url: “https://www.codenewbie.org/” , title: “codeNewbie podcast”)

puts “seeded”
 
