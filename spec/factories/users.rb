# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :user do |f|
  f.address "MyString"
  f.lnt 1.5
  f.lat 1.5
end
