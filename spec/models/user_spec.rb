require 'spec_helper'

describe User do
  context "Geo Localization" do
    it "Should return lnt and lan" do
      @user = User.new :address => "Av. Paulista, 5000"
      @user.save
      @user.lng.should == -46.6627013
      @user.lat.should == -23.5555595
    end
    
    it "should fail because address not can`t be blank " do
      @user = User.new
      @user.save
      @user.should have(1).error_on(:address)
    end
    
  end

end
