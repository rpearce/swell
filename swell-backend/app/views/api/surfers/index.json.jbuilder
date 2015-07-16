json.array! @surfers do |surfer|
  json.id surfer.id
  json.name surfer.name
  json.hometown surfer.hometown
  json.picture surfer.picture

  json.competitions do
    json.array! surfer.competitions do |competition|
      json.id competition.id
      json.name competition.name
      json.location competition.location
      json.occurs_on competition.occurs_on
    end
  end
end
