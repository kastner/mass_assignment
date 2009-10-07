class Asset < ActiveRecord::Base
  has_many :ips
  
  def ips_attributes=(ips = [])
    self.ips = ips.collect {|ip| Ip.find(ip[:id])}
  end
end
