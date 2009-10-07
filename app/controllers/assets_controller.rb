class AssetsController < ApplicationController
  def new
    @asset = Asset.new
    @asset.ips.build
  end
  
  def edit
    @asset = Asset.find(params[:id])
    # add space for another ip
    @asset.ips.build
    render :new
  end
  
  def create
    @asset = Asset.create(params[:asset])
    redirect_to asset_path(@asset)
  end
  
  def update
    @asset = Asset.find(params[:id])
    @asset.update_attributes(params[:asset])
    redirect_to asset_path(@asset)
  end
  
  def show
    @asset = Asset.find(params[:id])
    render :text => "Ips for asset named #{@asset.name}: #{@asset.ips.map(&:address)}"
  end
end
