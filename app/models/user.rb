class User < ActiveRecord::Base

	attr_accessible :nickname, :name, :surname

end