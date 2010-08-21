require 'spec_helper'

describe EventsController do

  context 'creating a new event' do
    before { post :create, :event => Factory.attributes_for(:event) }
    it 'should be a redirect' do
      response.should redirect_to root_path
    end
  end

end

