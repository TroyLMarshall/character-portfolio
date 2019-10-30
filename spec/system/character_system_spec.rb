# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Character management", type: :system do
  subject { FactoryBot.build(:character) }

  it "creates a character" do
    visit "/characters/new"

    fill_in "character_name", with: subject.name
    click_button "Create Character"

    expect(page).to have_text("Character was successfully created.")
  end
end
