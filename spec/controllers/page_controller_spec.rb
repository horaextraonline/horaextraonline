require 'spec_helper'

describe PageController do

  describe "GET 'quem_somos'" do
    it "should be successful" do
      get 'quem_somos'
      response.should be_success
    end
  end

end
