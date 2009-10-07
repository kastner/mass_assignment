require 'test_helper'

class AssetTest < ActiveSupport::TestCase
  def setup
    @ip1 = Ip.create(:address => "1.2.3.4")
    @ip2 = Ip.create(:address => "5.6.7.8")
  end
  
  test "Should set an ip" do
    a = Asset.create({:name => "blah", :ips_attributes => [{:id => @ip1.id}]})
    assert_equal 1, a.ips.size
  end

  test "Should set multiple ips" do
    a = Asset.create({:name => "blah", :ips_attributes => [
      {:id => @ip1.id},
      {:id => @ip2.id}
    ]})
    assert_equal 2, a.ips.size
  end
  
  test "Should unset ips" do
    a = Asset.create({:name => "blah", :ips_attributes => [
      {:id => @ip1.id},
      {:id => @ip2.id}
    ]})
    a.update_attributes({:ips_attributes => []})
    assert_equal 0, a.ips.size
  end
  
  test "Should work with hashes as well as arrays" do
    a = Asset.create({:name => "blah", :ips_attributes => {"0" => {:id => @ip1.id}}})
    assert_equal 1, a.ips.size
  end
  
  test "Should work with blank ids" do
    assert_nothing_raised(ActiveRecord::RecordNotFound) do
      a = Asset.create({:name => "blah", :ips_attributes => {"0" => {"id" => ""}}})
    end
  end
end
