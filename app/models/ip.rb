class Ip < ActiveRecord::Base
  has_one :assignment
  has_one :asset, :through => :assignment
end
