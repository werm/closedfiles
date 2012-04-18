class UserMailer < ActionMailer::Base
  default from: "werm82@gmail.com"

  def password_reset(user)
    @user = user
    mail :to => user.email, :subject => "Password Reset"
  end
end