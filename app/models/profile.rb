class Profile < ActiveRecord::Base
  attr_accessible :birthday, :bornat, :city, :email, :jointime, :lefttime, :name, :no, :phone, :qq, :qweibo, :site, :slogan, :sweibo

  validates_presence_of :no, :name
end
