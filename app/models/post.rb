class Post < ApplicationRecord#subclass of ApplicationRecord class
  has_many :comments #will add method to all post model objects with same name as symbol
end
