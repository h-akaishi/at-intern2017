class Blog < ActiveRecord::Base
  has_many  :replies

  validates :body ,presence: true
end
