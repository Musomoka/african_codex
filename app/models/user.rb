class User < ActiveRecord::Base
  attr_accessible  :age, :first_name, :second_name
end
