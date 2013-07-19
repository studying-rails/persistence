class Counter < ActiveRecord::Base
  attr_accessible :value

  def self.instance
    self.first_or_create!
  end

  def self.value
    instance.value
  end
  def self.value=(val)
    instance.tap do |i|
      i.value = val
      i.save!
    end
  end
end
