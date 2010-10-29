# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :users do |f|
  f.address "MyString"
  f.lnt 1.5
  f.lat 1.5
end
