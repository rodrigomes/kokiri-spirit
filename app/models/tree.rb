class Tree < ActiveRecord::Base
  attr_accessible :content, :latitude, :longitude, :nickname, :adress, :user_id

  belongs_to :user

  acts_as_gmappable

  def gmaps4rails_address
  #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    self.adress
  end

  def gmaps4rails_infowindow
    "<h1>#{nickname}</h1>"
  end
end
