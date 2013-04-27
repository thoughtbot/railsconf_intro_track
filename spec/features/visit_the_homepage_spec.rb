require 'spec_helper'

feature 'View the homepage' do
  scenario 'visitor sees relevant information' do
    visit root_path

    expect(page).to have_css('h1', text: 'RailsConf 2013 Intro Track')
  end
end
