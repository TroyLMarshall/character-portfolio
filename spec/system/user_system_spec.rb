# frozen_string_literal: true

require "rails_helper"

RSpec.describe "User management", type: :system do
  subject { FactoryBot.build(:user) }

  let(:seeded_user) { FactoryBot.build(:seeded_user) }

  it "creates a user" do
    visit "/"
    click_link "Sign up"

    fill_in "Email", with: subject.email
    fill_in "Password", with: subject.password
    fill_in "Password confirmation", with: subject.password
    click_button "Sign up"

    expect(page).to have_text("Welcome! You have signed up successfully.")
  end

  it "signs in existing user" do
    visit "/"

    fill_in "Email", with: seeded_user.email
    fill_in "Password", with: seeded_user.password

    click_button "Log in"

    expect(page).to have_text("Signed in successfully.")
  end

  it "denies invalid password" do
    visit "/"

    fill_in "Email", with: seeded_user.email
    fill_in "Password", with: "junk"

    click_button "Log in"

    expect(page).to have_text("Invalid Email or password.")
  end

  it "denies invalid Email" do
    visit "/"

    fill_in "Email", with: "junk@bademail.com"
    fill_in "Password", with: seeded_user.password

    click_button "Log in"

    expect(page).to have_text("Invalid Email or password.")
  end
end
