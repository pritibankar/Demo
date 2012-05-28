class Contact < ActiveRecord::Base
  attr_accessible :Email, :Name, :Message
end
