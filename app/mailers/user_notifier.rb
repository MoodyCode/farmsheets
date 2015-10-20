class UserNotifier < ActionMailer::Base
  default :from => 'dmmoody@gmail.com'

  def send_signup_email(user)
    @user = user
    mail( :to => @user.email,
          :subject => 'Thanks for signing up for FarmSheets')
  end
end