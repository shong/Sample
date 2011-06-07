require 'spec_helper'

feature "user signs up" do
  scenario "successfully signs up" do
    visit root_path
    click_link "Sign up"
    fill_in "Username", :with => "chunkybacon"
    fill_in "Email", :with => "chunky@bacon.com"
    fill_in "Password", :with => "P@ssword"
    fill_in "Password confirmation", :with => "P@ssword"
    click_button "Sign up"
    page.body.should match /successfully/
  end

  scenario "fails with duplicate username" do
    Factory(:user)
    visit root_path
    click_link "Sign up"
    fill_in "Username", :with => "chunkybacon"
    fill_in "Email", :with => "test@email.com"
    fill_in "Password", :with => "P@ssword"
    fill_in "Password confirmation", :with => "P@ssword"
    click_button "Sign up"
    page.body.should match /already been taken/
  end

  scenario "fails without a username" do
    visit root_path
    click_link "Sign up"
    fill_in "Username", :with => ""
    fill_in "Email", :with => "chunky@bacon.com"
    fill_in "Password", :with => "P@ssword"
    fill_in "Password", :with => "P@ssword"
    click_button "Sign up"
    page.body.should match /can't be blank/
  end
end
