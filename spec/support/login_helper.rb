# frozen_string_literal: true

module LoginHelper
  def do_login(username, password)
    visit "/"

    fill_in "Email", with: username
    fill_in "Password", with: password
    click_button "Log in"
  end
end
