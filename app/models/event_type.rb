class EventType < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :plain
  before_validation :name_to_plain

  def name_to_plain
    unless self.name.nil?
      self.plain = self.name.downcase.removeaccents
    end
  end
end

