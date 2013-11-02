class Quote < ActiveRecord::Base
  default_scope order('created_at desc')
  attr_accessible :statement, :said_by, :comment_on, :commented_on
end
