require 'spec_helper'

describe HomeController do

  context "Show Home Page" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

end
