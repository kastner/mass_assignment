class Asset < ActiveRecord::Base
  has_many :ips
  
  def assign_ips=(ips = [])
    self.ips = ips.collect {|ip| Ip.find(ip[:id])}
  end
end
