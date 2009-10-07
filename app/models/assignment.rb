class Assignment < ActiveRecord::Base
  belongs_to :asset
  belongs_to :ip
end
