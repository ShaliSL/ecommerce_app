class User < ActiveRecord::Base
    validates_presence_of :firstname, :lastname, :email
    validates :email, uniqueness: true
end
