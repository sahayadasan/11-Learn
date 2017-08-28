User.delete_all
User.create!(email: 'bob@aol.com', password: 'pass1234')
User.create!(email: 'sue@aol.com', password: 'pass1234', role: 'teacher')

Klass.delete_all
Klass.create!(name: 'Chemistry 3', subject: 'Science', level: 303, credits: 5)
Klass.create!(name: 'Physics 2', subject: 'Science', level: 201, credits: 5)
Klass.create!(name: 'Functional Programming', subject: 'Engineering', level: 420, credits: 5)
Klass.create!(name: 'OOP', subject: 'Engineering', level: 225, credits: 5)
Klass.create!(name: 'English', subject: 'Humanities', level: 101, credits: 3)
Klass.create!(name: 'History', subject: 'Humanities', level: 102, credits: 2)
