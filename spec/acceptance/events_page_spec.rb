require 'spec_helper'
include Capybara

describe 'events page' do
  context 'new event' do
    before { visit new_event_path }
    it 'should see new event form' do
      page.should have_content 'New Event'
    end
  end
end

