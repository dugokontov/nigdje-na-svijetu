class Status < ActiveRecord::Base
  attr_accessible :name, :css_class
  has_many :resources
end
