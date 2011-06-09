# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
user = User.create(:username => "engineyard", :email => "pandas@engineyard.com",
                   :password => "3Ycritter", :password_confirmation => "3Ycritter")
Critterpost.create(:content => "AWESOME!! You just deployed the greatest app, Critter, on the best platform, Engine Yard! Welcome to the cloud!",
                   :user_id => user)
