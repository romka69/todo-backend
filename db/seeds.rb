10.times do
  Task.create!([{
                      title: Faker::Hipster.sentence,
                      completed: Faker::Boolean.boolean
                  }])
end