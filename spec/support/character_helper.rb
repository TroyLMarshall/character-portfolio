# frozen_string_literal: true

module CharacterHelper
  def create_new(character)
    visit "/characters/new"

    fill_in "Name", with: character.name
    click_button "Create Character"
  end
end
