class Asset < ActiveRecord::Base
  has_many :assignments
  has_many :ips, :through => :assignments
  
  def assign_ips=(ips = [])
    self.ips = ips.collect {|ip| Ip.find(ip[:id])}
  end
end
