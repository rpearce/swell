Surfer.create!(
  name: "Bobert",
  age: 27,
  picture: "http://www.fillmurray.com/200/200",
  hometown: "Chucktown, SC",
)

Surfer.create!(
  name: "Coach Bill",
  age: 60,
  picture: "http://www.fillmurray.com/200/200",
  hometown: "Chicago, IL",
)

Surfer.create!(
  name: "Kelly Slater",
  age: 35,
  picture: "http://www.fillmurray.com/200/200",
  hometown: "Cocoa Beach, FL",
)

c = Competition.create!(
  name: '10 points for Griffenboard!',
  location: 'Surfwarts',
  occurs_on: Date.today
)

Surfer.all.each do |s|
  Entrant.create!(
    competition_id: c.id,
    surfer_id: s.id,
    score: nil
  )
end
