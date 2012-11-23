class User < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :trees
  #has_many :friends, :through => :friendships

  attr_accessible :email, :name, :password

  validates_presence_of :email, :name

  validates_uniqueness_of :name
  validates_uniqueness_of :email


end
