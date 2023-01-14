# Proper controller name for login purposes SessionsController
class RegistrationController < ApplicationController
  def login
    @user = User.all
  end

  def signup

  end

  def create
    @user = User.new(registration_params)
    puts "............................................................"
    u_name = @user.first_name

    if @user.save
      u_id = @user.id.to_s
      new_user = {:username => u_name +"_"+ u_id }
      if @user.update(new_user)
        p @user
      end
      redirect_to registration_login_path
    else
      render :signup, status: :unprocessable_entity
    end
  end


  private
  def registration_params
    params.require(:user).permit(:first_name, :last_name,:email,:division,:status,:username,:password)

  end
end
=begin
Forms allow you to receive data from your users via the webapp and store that information in your database 
and/or send it off for external processing to something like an API.


=end