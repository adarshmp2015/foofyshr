class HrController < ApplicationController

  layout false, only: [ :get_user_profile  ]


  def users
    @users = User.all
  end

  def get_user_profile
    @user_profile = UserProfile.where(user_id: get_user_id).first
    respond_to do |format|
     format.html
    end
  end

  def invite
    #Send mail
  end

  private

  def get_user_id
     params.require(:user_id)
  end

  def get_email_name
    params.permit(:name , :email)
  end

end
