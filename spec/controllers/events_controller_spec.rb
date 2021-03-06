require 'spec_helper'

describe EventsController do

  context 'creating a new event' do
    before { get :new }
    it 'should be a success' do
      response.should be_success
    end
    it { should render_template :new }
  end

  context 'submiting a new event' do
    before { post :create, :event => Factory.attributes_for(:event) }
    it 'should be a redirect' do
      response.should redirect_to root_path
    end
    it 'should create a new event' do
      Event.count.should be 1
    end
  end

end

