puts "Destroying user database"
User.destroy_all

puts "User database cleaned"
puts "Getting user data"
User.create!(email: "koki@chrysalis.com", password: "123123", first_name: "Koki", last_name: "Takahashi")
User.create!(email: "alison@chrysalis.com", password: "123123", first_name: "Alison", last_name: "Jeffrey")
User.create!(email: "sae@chrysalis.com", password: "123123", first_name: "Sae", last_name: "Matsuda")
User.create!(email: "alex@chrysalis.com", password: "123123", first_name: "Alex", last_name: "Komaha")

puts "#{User.count} users created"

User.all.each do |user|
  puts "Getting emotions data"
  (1..20).each do |num|
    Emotion.create!(
      emotion_level: rand(1..20),
      user: user,
      created_at: Date.today - num
    )
    puts "#{Emotion.count} user emotions created"
  end

  puts "Getting journal data"

  10.times do
    Journal.create!(
      title: Faker::Lorem.sentence,
      content: Faker::Lorem.paragraphs,
      user: user
    )
  end

  puts "#{Journal.count} journals created"

  puts "Getting goal data"

  30.times do
    UserGoal.create!(
      description: "Take a shower or a bath",
      user: user,
      status: "done"
    )
  end

  5.times do
    UserGoal.create!(
      description: "Take a shower or a bath",
      user: user,
      status: "inactive"
    )
  end

  24.times do
    UserGoal.create!(
      description: "Make my bed",
      user: user,
      status: "done"
    )
  end

  15.times do
    UserGoal.create!(
      description: "Take a shower or a bath",
      user: user,
      status: "inactive"
    )
  end

  15.times do
    UserGoal.create!(
      description: "Make myself lunch",
      user: user,
      status: "done"
    )
  end

  8.times do
    UserGoal.create!(
      description: "Make myself lunch",
      user: user,
      status: "inactive"
    )
  end

  18.times do
    UserGoal.create!(
      description: "Talk to a family member or friend",
      user: user,
      status: "done"
    )
  end

  8.times do
    UserGoal.create!(
      description: "Talk to a family member or friend",
      user: user,
      status: "inactive"
    )
  end

  46.times do
    UserGoal.create!(
      description: "Brush my teeth",
      user: user,
      status: "done"
    )
  end

  8.times do
    UserGoal.create!(
      description: "Brush my teeth",
      user: user,
      status: "inactive"
    )
  end

  20.times do
    UserGoal.create!(
      description: "Wash the dishes",
      user: user,
      status: "done"
    )
  end

  13.times do
    UserGoal.create!(
      description: "Wash the dishes",
      user: user,
      status: "inactive"
    )
  end

  5.times do
    UserGoal.create!(
      description: "Take a short walk",
      user: user,
      status: "done"
    )
  end

  6.times do
    UserGoal.create!(
      description: "Take a short walk",
      user: user,
      status: "inactive"
    )
  end

  3.times do
    UserGoal.create!(
      description: "Clean my room",
      user: user,
      status: "done"
    )
  end

  1.times do
    UserGoal.create!(
      description: "Clean my room",
      user: user,
      status: "inactive"
    )
  end

  5.times do
    UserGoal.create!(
      description: "Change clothes",
      user: user,
      status: "done"
    )
  end

  2.times do
    UserGoal.create!(
      description: "Change clothes",
      user: user,
      status: "inactive"
    )
  end

  1.times do
    UserGoal.create!(
      description: "Call my grandma",
      user: user,
      status: "inactive"
    )
  end

  4.times do
    UserGoal.create!(
      description: "Watch TV with my mother",
      user: user,
      status: "done"
    )
  end

  2.times do
    UserGoal.create!(
      description: "Take the dog for a walk",
      user: user,
      status: "inactive"
    )
  end

  1.times do
    UserGoal.create!(
      description: "Organise my manga collection",
      user: user,
      status: "inactive"
    )
  end

  2.times do
    UserGoal.create!(
      description: "Make an appointment with my doctor",
      user: user,
      status: "done"
    )
  end

  2.times do
    UserGoal.create!(
      description: "Go to doctor's appointment",
      user: user,
      status: "done"
    )
  end

  1.times do
    UserGoal.create!(
      description: "Go to the drugstore and buy toilet paper",
      user: user,
      status: "inactive"
    )
  end

  1.times do
    UserGoal.create!(
      description: "Call my friend and see if he wants to come over",
      user: user,
      status: "inactive"
    )
  end

  3.times do
    UserGoal.create!(
      description: "Take out the trash",
      user: user,
      status: "done"
    )
  end

  5.times do
    UserGoal.create!(
      description: "Do my laundry",
      user: user,
      status: "done"
    )
  end

  puts "#{UserGoal.count} user goals created"
end
