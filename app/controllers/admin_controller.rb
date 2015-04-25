class AdminController < ApplicationController
def create
  puts "pppppppraaaaaamsss #{params.inspect}"
  @role = Role.find_by_name("employee")
  @role.users.create(:email=>params["email"], :password=>params["password"], :password_confirmation=>params["password_confirmation"])
 end
end
