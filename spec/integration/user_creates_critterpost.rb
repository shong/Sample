require 'spec_helper'

feature "User creates critterpost" do
  scenario "Successfully creates critterpost" do
    user = Factory(:user)
    login(user)
    click_link "New Critterpost"
    fill_in :content, :with => "My new critterpost"
    click_link "Post"
    page.body.should have_content("My new critterpost")
  end
end

def login(user)
  visit new_user_session_path
  fill_in "Username", :with => user.username
  fill_in "Password", :with => user.password
  click_button "Sign in"
end
