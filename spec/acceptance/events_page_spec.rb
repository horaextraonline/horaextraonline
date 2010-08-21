require 'spec_helper'
include Capybara

describe 'events page' do
  context 'new event' do
    before { visit new_event_path }
    it 'should see new event form' do
      page.should have_content 'New Event'
    end
    context 'submiting a new event' do
      before do
        fill_in :name, :with => 'My New Event'
        click_button 'Create'
      end
      it 'should show success message' do
        page.should have_content 'Event successfully created!'
      end
    end
  end
end

