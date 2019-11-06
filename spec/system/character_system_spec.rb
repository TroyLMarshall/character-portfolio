# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Character management", type: :system do
  subject { FactoryBot.build(:character) }

  let(:seeded_user) { FactoryBot.build(:seeded_user) }

  it "creates a character" do
    do_login(seeded_user.email, seeded_user.password)

    create_new(subject)
    expect(page).to have_text("Character was successfully created.")
  end

  it "updates a character" do
    do_login(seeded_user.email, seeded_user.password)

    create_new(subject)

    visit "/"
    click_link "Edit"

    fill_in "Name", with: "#{subject.name}2"
    click_button "Update Character"

    expect(page).to have_text("#{subject.name}2")
  end

  it "deletes a character" do
    do_login(seeded_user.email, seeded_user.password)

    create_new(subject)

    visit "/"
    accept_alert do
      click_link "Destroy"
    end

    expect(page).to have_text("Character was successfully destroyed.")
  end
end
