class Status < ActiveRecord::Base
  default_scope order('id')
  attr_accessible :name, :css_class
  has_many :resources
end
