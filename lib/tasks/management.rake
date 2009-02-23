namespace :db do
  desc "create default admin user"
  task :create_admin => :environment do
    admin = User.create(
      :login => "admin", 
      :name => "Admin", 
      :email => "admin@somesitesomewhere.com", 
      :password => "Password", 
      :password_confirmation => "Password"
      )
    admin.save false
  end  
end

