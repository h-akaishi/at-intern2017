class Reply < ActiveRecord::Base
  belongs_to  :blog

  validates :comment ,presence: true
end
