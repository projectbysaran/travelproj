class HomeController < ApplicationController
def index
	puts "5555555555555555555"
	puts current_user.inspect
	puts current_user.role.inspect
    if current_user.role.name=="admin"
      render 'admin/index'
    elsif current_user.role.name=="member"
      render 'member/index'
    elsif current_user.role.name=="employee"
      render 'employee/index'
    end
end
end
