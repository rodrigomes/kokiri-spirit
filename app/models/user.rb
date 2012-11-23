class User < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :trees, :dependent => :destroy
  #has_many :friendships
  #has_many :friends, :through => :friendships

  attr_accessible :email, :name, :password

end
