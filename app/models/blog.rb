class Blog < ActiveRecord::Base
  has_many  :replies
end
