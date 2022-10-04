puts "seeding cohorts"
C1 = Cohort.create!(start_date: "june 27")
C2 = Cohort.create!(start_date: "july 18")
C3 = Cohort.create!(start_date: "Aug 10")
# puts “seeding cohorts”
# Cohort.create!([
# {start_date: “june 28”},
# {start_date: “july 18”},
# (start_date: “Aug 10”)
# ])
puts "seeding surveys"
S1 = SurveyForm.create(name: "Liz", feeling_check: 2, learned_today: "functions are cool", feedback: "im scared to graduate...if i graduate")
S2 = SurveyForm.create(name: "Sheena", feeling_check: 5, learned_today: "i love fetch", feedback: "give instructors a raise")
S3 = SurveyForm.create(name: "John", feeling_check: 4, learned_today: "CRUD", feedback: "phase 1 is to short and phase 3 is to long")
S4 = SurveyForm.create(name: "Barrett", feeling_check: 4, learned_today: "arrarys are neat", feedback: "i'm having a great time")
S5 = SurveyForm.create(name: "Brooke", feeling_check: 5, learned_today: "CRUD", feedback: "bootcamp rules")

puts "seeding users"
U1 = User.create(username: "lizrhodesss", email: "liz@fake.com", cohort_id: C1.id, survey_form_id: S1.id, password: "secure88")
U2 = User.create(username: "queenB", email: "brooke@fake.com", cohort_id: C2.id, survey_form_id: S2.id, password: "pass123")
U3 = User.create(username: "johnroy", email: "john@fake.com", cohort_id: C3.id, survey_form_id: S3.id, password: "crackthis1")
U4 = User.create(username: "sheeneazy", email: "Sheena@fake.com", cohort_id: C1.id, survey_form_id: S4.id, password: "tokyo222")
U5 = User.create(username: "baritoneBarrett", email: "barrett@fake.com", cohort_id: C3.id, survey_form_id: S5.id, password: "diddy9")



puts "seeding quotes"
Q1 = Quote.create(quote: "Nothing is impossible. The word itself says I'm possible!", author: "Audrey Hepburn")
Q2 = Quote.create!(quote: "Success is not final, failure is not fatal: it is the courage to continue that counts.", author: "Winston Churchhill")
Q3 = Quote.create!(quote: "For me, becoming isn’t about arriving somewhere or achieving a certain aim. I see it instead as forward motion, a means of evolving, a way to reach continuously toward a better self. The journey doesn't end.", author: "Michelle Obama")
Q4 = Quote.create(quote: "I want to be in the arena. I want to be brave with my life. And when we make the choice to dare greatly, we sign up to get our asses kicked. We can choose courage or we can choose comfort, but we can't have both. Not at the same time.", author: "Brene Brown")
Q5 = Quote.create(quote: "Believe you can and you're halfway there.", author: "Theodore Roosevelt")


puts "seeding  non_tech_resources"
Nt1 = NonTechResource.create(url: "https://www.forbes.com/sites/forbescoachescouncil/2017/07/28/18-ways-to-get-better-at-working-under-pressure/?sh=697a29e42e35", title: "18 Ways To Get Better At Working Under Pressure")
Nt2 = NonTechResource.create(url: "https://www.apa.org/monitor/2021/06/cover-impostor-phenomenon" , title: "How to overcome impostor phenomenon")
Nt3 = NonTechResource.create(url: "https://www.findingoptimism.com/mental-hacks-to-improve-your-focus/" , title: "27 Mental Hacks To Improve Your Focus Right Now")


puts "seeding tech_resources"
tr1 = TechResource.create(url: "https://dev.to/jakedapper/how-many-fonts-you-got-5824", title: "How Many Fonts You Got?")
tr2 = TechResource.create(url: "https://dev.to/florinpop17/24-javascript-array-methods-explained-video-format-i3e" , title: "24 JavaScript Array Methods explained (video format)")
”tr3 = TechResource.create(url: "https://www.codenewbie.org/" , title: "codeNewbie podcast")
puts "seeded"
 
