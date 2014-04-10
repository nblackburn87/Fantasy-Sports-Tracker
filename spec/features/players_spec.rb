require 'spec_helper'

describe Player do
  context 'creating' do
    it 'lets the user view the New page' do
      visit new_player_path
      page.should have_content "Add a New Player"
    end

    it 'lets users create a new player' do
      player = FactoryGirl.build :player
      visit new_player_path
      fill_in :name, with: player.name
      fill_in 'position', with: player.position
      fill_in 'team_id', with: player.team_id
      click_button 'Create Player'
      page.should have_content player.name
    end
  end
end
