namespace :setup do
  desc "Add sample survey questions"
  task :survey => [ :environment ] do
    # Survey 1
    q1 = Question.create(:question => "How old are you?")
    c1 = Choice.create(:question_id => q1.id, :choice => "18 Below")
    c2 = Choice.create(:question_id => q1.id, :choice => "19 To 25")
    c3 = Choice.create(:question_id => q1.id, :choice => "26 To 30")

    # Survey 2
    q2 = Question.create(:question => "What is you gender?")
    c1 = Choice.create(:question_id => q2.id, :choice => "Male")
    c2 = Choice.create(:question_id => q2.id, :choice => "Female")

    # Survey 3
    q3 = Question.create(:question => "How tall are you?")
    c1 = Choice.create(:question_id => q3.id, :choice => "5ft")
    c2 = Choice.create(:question_id => q3.id, :choice => "6ft")
    c3 = Choice.create(:question_id => q3.id, :choice => "7ft")

    # Survey 4
    q4 = Question.create(:question => "Favorite color?")
    c1 = Choice.create(:question_id => q4.id, :choice => "black")
    c2 = Choice.create(:question_id => q4.id, :choice => "white")
    c3 = Choice.create(:question_id => q4.id, :choice => "blue")
    
  end
end
