
class Home < ActiveRecord::Base
    validates_presence_of :name, :price, :quantity, :category
    has_many :reviews, -> { order(created_at: :desc) }


end