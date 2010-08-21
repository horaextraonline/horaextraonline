Factory.define :event do |f|
  f.name "New Event"
  f.type "Dojo"
  f.local "Porto Alegre"
  f.date_time DateTime.now
  f.description "Cool event."
end

