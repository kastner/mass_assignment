class Asset < ActiveRecord::Base
  has_many :ips
  
  def ips_attributes=(ips = [])
    if ips.is_a? Hash
      ips = ips.sort_by { |index, _| index.to_i }.map { |_, attributes| attributes }
    end
    
    self.ips = ips.collect {|ip| Ip.find(ip[:id])}
  end
end
