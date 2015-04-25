class RegistrationsController < Devise::RegistrationsController
  skip_before_filter :authenticate_user!, :only => [:new]
 def new
  super
 end


 def create
  puts "user createeeeeeeeeeeeeeeeeee"
  @role=Role.find_by_name("member")
  @user=@role.users.new(user_params)
  #@user = User.new(params[:user])
  if @user.save
   flash[:notice] = "You have signed up successfully. If enabled, a confirmation was sent to your e-mail."
   redirect_to root_url
  else
   render :action => :new
  end
 end

 def update
  super
 end
private
def user_params
 params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
end
end
