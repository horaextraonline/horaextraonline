class User < ActiveRecord::Base
  validates_presence_of :address
  acts_as_mappable :auto_geocode=>{:field=>:address, :error_message=>'Could not geocode address'}
end
