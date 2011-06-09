Factory.define :user do |u|
  u.username "chunkybacon"
  u.email "chunky@bacon.com"
  u.password "P@ssword"
  u.password_confirmation "P@ssword"
end

Factory.define :critterpost do |c|
  c.content "My critterpost"
  c.association :user
end
