class Tree < ActiveRecord::Base
  attr_accessible :content, :latitude, :longitude, :nickname, :street, :city, :country

  acts_as_gmappable

  def gmaps4rails_address
  #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    if street.nil?
      self.latitude + " " + self.longitude
    else
      self.street + " " + self.city + " " + self.country
    end
  end
end
