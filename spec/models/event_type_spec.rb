require 'spec_helper'

describe EventType do
  it "should be invalid if have nil name" do
    event_type = EventType.new(:name => nil)
    event_type.should have(1).error_on(:name)
  end

  it "should be invalid if no name" do
    event_type = EventType.new(:name => "")
    event_type.should have(1).error_on(:name)
  end

  it "should be valid if have name" do
    event_type = EventType.new(:name => "Cursos")
    event_type.should have(0).error_on(:name)
  end

 it "should plain equal joao if name equal João" do
   event_type = EventType.create(:name => "João")
   event_type.plain.should == "joao"
 end

 it "should plain equal jose if name equal José" do
   event_type = EventType.create(:name => "José")
   event_type.plain.should == "jose"
 end

  it "should not allow duplicated entries" do
   event_type1 = EventType.create(:name => "José")
   event_type2 = EventType.new(:name => "José")

   event_type2.should have(1).error_on(:plain)
  end
end

