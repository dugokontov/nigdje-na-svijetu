class Content < ActiveRecord::Base
  attr_accessible :code_name, :page_content
  def self.get_page_content
    return Content.all.reduce({}) do |memo, obj|
      memo[obj[:code_name].to_sym] = obj[:page_content]
      memo
    end
  end
end
