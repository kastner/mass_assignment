class AddAssetIdToIps < ActiveRecord::Migration
  def self.up
    add_column :ips, :asset_id, :integer
  end

  def self.down
    remove_column :ips, :asset_id
  end
end
